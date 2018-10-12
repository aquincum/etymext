
import { Template, Sense } from './wikiTypes'
import axios from 'axios';



export async function getEtymologies(word){
	const page = word.toLowerCase();
	const url = 'https://en.wiktionary.org/w/api.php?action=parse&origin=*&prop=sections&redirect=yeah&format=json&page=' + page;
  const response = await axios.get(url);
  console.log('Response received...')
  const targetLang = 'English';
  const langs = response.data.parse.sections.filter(section => section.toclevel == 1 && section.line == targetLang).map(section => section.number);

  console.log(`${langs.length} target languages...`)
  const langSections = response.data.parse.sections.filter(section => langs.indexOf(section.number.split('.')[0]) != -1);
  console.log(`${langSections.length} lang sections...`)
  const etymSections = langSections.filter(section => section.line.match(/Etymology/));
  console.log(`${etymSections.length} etymology sections...`)

	const etymWikiTexts = await Promise.all(etymSections.map(section => 
			axios.get(`https://en.wiktionary.org/w/api.php?action=parse&origin=*&prop=wikitext&format=json&page=${page}&section=${section.index}`)
  ));
  const senses = etymWikiTexts.map(wt => new Sense(wt.data.parse.wikitext['*']));
  return senses;
}

export function textifyEtymologies(senses){
  return senses.map((sense,idx) => `Sense ${idx}: ${sense.simpleTextify()}\n`);
}