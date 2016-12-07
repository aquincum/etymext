import {parsePage, hasError, getError} from './parser.purs'

function getEtymology(word, cb){
	const xhr = new XMLHttpRequest();
	const url = 'https://en.wiktionary.org/w/api.php?action=query&origin=*&prop=revisions&rvprop=content&format=json&titles='+word.toLowerCase();
	xhr.onreadystatechange = function(){
		if(xhr.readyState !== XMLHttpRequest.DONE || xhr.status !== 200) return;
		const resp = JSON.parse(xhr.responseText);
		const pages = resp.query.pages;
		const content = pages[Object.keys(pages)].revisions[0]["*"];

		var structure = parsePage(content);
		console.log(structure.value0)
		if(hasError(structure)){
			return alert(getError(structure));
		}

/*		const blends = content.match(/\{\{blend.*\}\}/g);
		if(blends){
			let res = '';
			blends.forEach(function(blend){
				const parts = blend.split('|');
				const blendparts = parts.slice(1,parts.length - 1);
				res += 'Blend of ' + blendparts.join(' and ') + '\n';
			});
			return cb(res);
		}
		// YEAH YEAH YEAH!
		cb('No idea!');
*/
	}
	xhr.open('GET', url, true)
	xhr.send();
}

// debugging purposes
window.ge = getEtymology


function getEtymologyFromMenu(info){
	const result = getEtymology(info.selectionText, alert);
}

chrome.contextMenus.create({
	title: 'Etymology for %s',
	id: 'etymext',
	contexts: ['selection'],
	onclick: getEtymologyFromMenu,
});
