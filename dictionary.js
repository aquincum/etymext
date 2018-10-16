import { Word } from './wikiTypes';
import fs from 'fs';
import path from 'path';

export class Dictionary {
  constructor(language){
    this.language = language || 'English';
    this.filename = path.join(__dirname, 'dictionaries', this.language.toLowerCase() + '.dict');
  }
  load(){
    return new Promise((resolve, reject) => {
      fs.readFile(this.filename, (err, data) => {
        if(err){
          if(err.code == 'ENOENT'){
            this.words = [];
            return resolve();
          }
          else return reject(err);
        }
        var parsed;
        try {
          parsed = JSON.parse(data);
        } catch (e){
          return reject(e);
        }
        if(!parsed.length || parsed.length < 1){
          return reject({message: 'Dictionary file is not an array'});
        }
        this.words = parsed.map(p => Word.create(p, this.language));
        resolve();
      })
    });
  }
  existsWord(word){
    return this.words.filter(w => w.word == word) > 0;
  }
  getWord(word){
    const matches = this.words.filter(w => w.word == word);
    return matches.length > 0 ? matches[0] : null;
  }
  async fetchWord(word){
    const matches = this.words.filter(w => w.word == word);
    if(matches.length > 0) {
      return matches[0]
    }
    const w = new Word(word, this.language);
    await w.fetchWiktionary();
    this.words.push(w);
    return w;
    
  }
  save(){
    return new Promise((resolve, reject) => {
      const content = JSON.stringify(this.words.map(w => w.save()));
      fs.writeFile(this.filename, content, (err) => {
        if(err) reject(err);
        else resolve();
      })
    })
  }
  countMainOrigins(){
    const addLangToMap = (acc, me) => {
      const l = me.langFrom();
      if(l in acc) acc[l] ++;
      else acc[l] = 1;
      return acc;
    };
    const mainEtyms =  this.getAllSenses()
      .map(sense => sense.mainEtymology())
      .reduce((acc,x) => acc.concat(x), []);
    // inhs
    const inheriteds = mainEtyms.filter(me => me.isInherited());
    const inhMap = inheriteds.reduce(addLangToMap, {});
    return {
      inherited: inhMap,
      borrowed: mainEtyms.filter(me => me.isBorrowed()).reduce(addLangToMap, {}),
      derived: mainEtyms.filter(me => me.isDerived()).reduce(addLangToMap, {}),
      etymology: mainEtyms.filter(me => me.label=='etym' || me.label=='m').reduce(addLangToMap, {}),
    }
  }
  generateCognateTable(config){
    return this.getAllSenses().map(s => [s.word, ...s.formsIn(config.history)]);
  }
  getAllSenses(){
    return this.words
      .map(word => {
        var s = word.senses;
        if(!s) return [];
        return s.map(ss => {
          ss.word = word.word;
          return ss;
        })
      })
      .reduce((acc,x) => acc.concat(x), [])
      .filter(x => !!x);
  }
}
