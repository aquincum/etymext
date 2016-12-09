/*
STATEs:
"outside" -- outside of a language
"language" -- inside a language (==English==)
"sense" -- inside a sense begun with an etym. header
 */

class Template {
	constructor(head, tail) {
		this.label = head;
		this.params = tail;
	}
}

function parseTemplate(template){
	const inside = template.slice(2,template.length-2);
	const parts = inside.split('|');
	const head = parts[0];
	const tail = parts.slice(1);
	return new Template(head, tail);
}


function parsePage(content){
	const lines = content.split('\n');
	var language = '';
	var languages = [];
	var senses = [];
	var templates = [];
	for(let i = 0; i < lines.length; i++){
		const line = lines[i];
		let lang = line.match(/^==([^=]*)==$/);
		if(lang){
			if(language != ''){
				languages.push({
					language,
					senses
				})
			}
			language = lang[1];
			senses = [];
			templates = [];
			continue;
		}
		let sect = line.match(/===*([^=]*)===*/);
		if(sect){
			if(line.match(/Etymology/)){
				senses.push(templates); // close previous sense
				templates = [];
			}
			continue;
		}
		let temps = line.match(/\{\{.*?\}\}/g);
		if(temps) {
			templates = templates.concat(temps.map(parseTemplate));
		}
	}
	return languages;
}



function getEtymology(word, cb){
	const xhr = new XMLHttpRequest();
	const url = 'https://en.wiktionary.org/w/api.php?action=query&origin=*&prop=revisions&rvprop=content&format=json&titles='+word.toLowerCase();
	xhr.onreadystatechange = function(){
		if(xhr.readyState !== XMLHttpRequest.DONE || xhr.status !== 200) return;
		const resp = JSON.parse(xhr.responseText);
		const pages = resp.query.pages;
		const content = pages[Object.keys(pages)].revisions[0]["*"];

		var structure = parsePage(content);
		structure.map(l => l.senses.map(s => s.map(t => console.log(t.label))))

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
