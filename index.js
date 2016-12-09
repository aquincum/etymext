/*
STATEs:
'outside' -- outside of a language
'language' -- inside a language (==English==)
'sense' -- inside a sense begun with an etym. header
 */

class Template {
	constructor(head, tail) {
		this.label = head;
		this.params = tail;
	}
	getParam(n){
		if(this.params.length > n){
			return this.params[n];
		}
		else return null;
	}
	isEtyl(){
		return this.label == 'etyl';
	}
	langFrom(){
		if(!(this.isEtyl() || this.isMention())) return null;
		return this.getParam(0);
	}
	isMention(){
		return this.label == 'm';
	}
	getForm(){
		if(!this.isMention()) return '';
		return this.getParam(1);
	}
	getMeaning(){
		if(!this.isMention()) return '';
		return this.getParam(3);
	}
	formatMention(){
		var rv = this.getForm();
		if(this.params.length > 3) rv += ' `' + this.getMeaning() + '\'';
		return rv;
	}
}

class Etymology {
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

function compileTemplates(temps){
	var currEtym = null;
	var etyms = [];
	for(let i = 0; i < temps.length; i++){
		if(temps[i].isEtyl()){
			if(currEtym) etyms.push(currEtym);
			currEtym = new Etymology(temps[i]);
		}
		else if(temps[i].isMention() && currEtym){
			currEtym.addMention(temps[i]);
		}
	}
	if(currEtym) etyms.push(currEtym);
	return etyms;
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
				senses.push(templates);
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
	senses.push(templates);
	languages.push({language, senses});
	return languages;
}



function getEtymology(word, cb){
	var rv = '';
	const xhr = new XMLHttpRequest();
	const url = 'https://en.wiktionary.org/w/api.php?action=query&origin=*&prop=revisions&rvprop=content&format=json&titles='+word.toLowerCase();
	xhr.onreadystatechange = function(){
		if(xhr.readyState !== XMLHttpRequest.DONE || xhr.status !== 200) return;
		const resp = JSON.parse(xhr.responseText);
		const pages = resp.query.pages;
		const content = pages[Object.keys(pages)].revisions[0]['*'];

		var structure = parsePage(content);
		// structure.map(l => l.senses.map(s => s.map(t => console.log(t.label))))
		const englishSenses = structure.filter(x => x.language=='English')[0].senses;
		englishSenses.forEach((sense, idx) => {
			const etyms = compileTemplates(sense);
			if(etyms.length == 0) return;
			rv += `Sense ${idx}: `;
			rv += etyms.map(et => {
				const forms = et.mentions
				return `from ${et.language}: ${et.formatMentions()}`;
			}).join(', ');
			rv += '\n';
		})
		cb(rv);

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
window.ge = getEtymology;
window.gl = x => getEtymology(x, console.log);


function getEtymologyFromMenu(info){
	const result = getEtymology(info.selectionText, alert);
}

chrome.contextMenus.create({
	title: 'Etymology for %s',
	id: 'etymext',
	contexts: ['selection'],
	onclick: getEtymologyFromMenu,
});
