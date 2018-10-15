
import { Word } from './wikiTypes'



export async function getEtymologies(word, targetLang = 'English'){
  const w = new Word(word);
  return w.fetchWiktionary(targetLang);
}

export function textifyEtymologies(senses){
  return senses.map((sense,idx) => `Sense ${idx}: ${sense.simpleTextify()}`).join('\n');
}