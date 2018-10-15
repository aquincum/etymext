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
}
