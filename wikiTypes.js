
export class Template {
	constructor(template) {
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
    return this.isDerived() || this.isBorrowed() || this.isInherited()
  }
	langFrom(){
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
      s += ' from ';
    }
    s += this.langFrom();
    s += ' ';
    s += this.getForm();
    const meaning = this.getMeaning();
    if(meaning){
      s += ` '${meaning}'`;
    }
    return s;
  }
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
}