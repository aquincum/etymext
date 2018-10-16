import { findLanguage } from './langs'
import axios from 'axios';

export class Template {
	constructor(template) {
    if(!template) {
      this.label = 'empty';
      this.params = []
      return;
    }
    const inside = template.slice(2,template.length-2);
    const parts = inside.split('|');
    this.label = parts[0];
    this.params = parts.slice(1);
	}
	getParam(n){
		if(this.params.length > n){
			return this.params[n];
		}
		else return null;
  }
  getNamedParam(name){
    const param = this.params.filter(p => p.split('=')[0] === name);
    if(param.length > 0){
      return param[0].split('=')[1];
    } else {
      return null;
    }

  }
	isDerived(){
		return this.label == 'der' || this.label == 'derived';
	}
	isBorrowed(){
		return this.label == 'bor' || this.label == 'borrowed';
	}
	isInherited(){
		return this.label == 'inh' || this.label == 'inherited';
  }
  isCognate(){
    return this.label == 'cog' || this.label == 'cognate'
  }
	isMention(){
		return this.label == 'm' || this.label == 'mention';
  }
  isEtyl(){
    return this.isDerived() || this.isBorrowed() || this.isInherited() || this.label == 'etyl';
  }
	langFrom(){
    if(this.label == 'etyl' || this.label == 'm') return this.getParam(0);
		return this.getParam(1);
  }
	getForm(){
		return this.getParam(2);
	}
	getMeaning(){
		return this.getNamedParam('t') || this.getNamedParam('gloss') || this.getParam(4);
	}
	formatMention(){
		var rv = this.getForm();
		if(this.params.length > 3) rv += ' `' + this.getMeaning() + '\'';
		return rv;
  }
  toString(){
    var s = '';
    if(this.isEtyl()){
      if(this.isBorrowed()) s += 'borrowed';
      if(this.isDerived()) s += 'derived';
      if(this.isInherited()) s += 'inherited';
      if(this.label == 'etyl') s += 'etymology'
      s += ' from ';
    }
    s += findLanguage(this.langFrom());
    s += ' ';
    if(this.label != 'etyl'){
      s += this.getForm();
      const meaning = this.getMeaning();
      if(meaning){
        s += ` '${meaning}'`;
      }
    }
    return s;
  }
  static create(obj){
    const t = new Template();
    t.label = obj.label || 'ERROR';
    t.params = obj.params;
    return t;
  }
}

const nullEtymology = {
  getParam: () => null,
  getForm: () => '',
  getNamedParam: () => null,
  isDerived: () => false,
  isBorrowed: () => false,
  isInherited: () => false,
  isCognate: () => false,
  isMention: () => false,
  isEtyl: () => false,
  toString: () => 'no etymology'
}


/** @deprecated */
export class Etymology {
	constructor(etymTempl){
		this.template = etymTempl;
		this.language = etymTempl.langFrom();
		this.forms = [];
	}
	addMention(m){
		if(m.langFrom() == this.language){
			this.forms.push(m);
		}
	}
	formatMentions(){
		return this.forms.map(x => x.formatMention()).join(', ');
	}
}

export class Sense {
  constructor(wikitext){
    if(!wikitext){
      this.templates = [];
      return;
    }
    let tempsTxt = wikitext.match(/\{\{.*?\}\}/g);
		if(tempsTxt) {
			this.templates = tempsTxt.map(s => new Template(s));
		} else {
      this.templates = [];
    }
  }
  simpleTextify(){
    if(this.templates.length === 0){
      return "No information given.";
    }
    return this.templates.filter(t => t.isEtyl()).map(t => t.toString()).reverse().join(' > ');
  }
  mainEtymology() {
    if(this.templates.length == 0) return nullEtymology;
    const borrows = this.templates.filter(t => t.isBorrowed());
    if(borrows.length > 0){
      return borrows[borrows.length - 1];
    }
    const inh = this.templates.filter(t => t.isInherited());
    if(inh.length > 0){
      return inh[inh.length - 1];
    }
    return this.templates[this.templates.length-1];
  }
  formsIn(languageCodes){
    return languageCodes
      .map(lc => this.templates.filter(t => t.langFrom() == lc && t.isEtyl()))
  }
  static create(obj){
    const s = new Sense();
    if(!s.templates) return s;
    s.templates = obj.templates.map(t => Template.create(t));
    return s;
  }
}

export class Word {
  constructor(word, language = 'English', error){
    this.word = word;
    this.language = language;
    if(error) this.error = error;
  }
  async fetchWiktionary(){
    console.log('fetching', this.word);
    const page = this.word;
    const url = 'https://en.wiktionary.org/w/api.php?action=parse&origin=*&prop=sections&redirect=yeah&format=json&page=' + page;
    const response = await axios.get(url);
    if(!response.data.parse){
      this.error = 'no such word';
      return [];
    }
    const langs = response.data.parse.sections.filter(section => section.toclevel == 1 && section.line == this.language).map(section => section.number);
  
    const langSections = response.data.parse.sections.filter(section => langs.indexOf(section.number.split('.')[0]) != -1);
    const etymSections = langSections.filter(section => section.line.match(/Etymology/));
  
    const etymWikiTexts = await Promise.all(etymSections.map(section => 
        axios.get(`https://en.wiktionary.org/w/api.php?action=parse&origin=*&prop=wikitext&format=json&page=${page}&section=${section.index}`)
    ));
    this.senses = etymWikiTexts.map(wt => {
      if(!wt.data.parse || !wt.data.parse.wikitext) return null;
      else return new Sense(wt.data.parse.wikitext['*'])
    }).filter(x => x != null);
    return this.senses;  
  }
  toString(){
    const textifySense = sense => sense.simpleTextify ? sense.simpleTextify() : 'NOTASENSE?';
    if(this.senses)
      return this.senses.map((sense,idx) => `Sense ${idx}: ${textifySense(sense)}`).join('\n');
    if(this.error)
      return 'Error: ' + this.error;
    return '???';
  }
  save(){
    return { 
      word: this.word,
      // language: this.language,
      senses: this.senses
    }
  }
  static load(json, language){
    var parsed;
    try {
      parsed = JSON.parse(json);
    } catch (e){
      console.error(`Error loading word. Error=${e.message}, JSON=${json} `);
      return new Word('', language, e.message);
    }
    return Word.create(parsed, language);
  }
  static create(obj, language){
    const w = new Word(obj.word, language);
    if(!obj.senses) return w;
    w.senses = obj.senses.map(s => Sense.create(s));
    return w;
  }
}
