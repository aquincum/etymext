/*
STATEs:
'outside' -- outside of a language
'language' -- inside a language (==English==)
'sense' -- inside a sense begun with an etym. header
 */

 import { getEtymologies, textifyEtymologies } from './parseWiki'



 
// debugging purposes
window.ge = getEtymologies;
window.gl = x => getEtymologies(x).then(y => console.log(textifyEtymologies(y)));


function getEtymologyFromMenu(info){
	getEtymologies(info.selectionText).then(y => alert(textifyEtymologies(y)));
}

chrome.contextMenus.create({
	title: 'Etymology for %s',
	id: 'etymext',
	contexts: ['selection'],
	onclick: getEtymologyFromMenu,
});
