function getEtymology(info){
	const word = info.selectionText;
	const xhr = new XMLHttpRequest();
	const url = 'https://en.wiktionary.org/w/api.php?action=query&origin=*&prop=revisions&rvprop=content&format=json&titles='+word;
	xhr.onreadystatechange = function(){
		const resp = JSON.parse(xhr.responseText);
		// YEAH YEAH YEAH!
	}
	xhr.open('GET', url, true)
	xhr.send();
}

chrome.contextMenus.create({
	title: 'Etymology for %s',
	contexts: ['selection'],
	onclick: getEtymology,
});
