import langs from './language-codes-full.json'
import xlangs from './exceptional-languages.json'
import etolangs from './etym-only-languages.json'

function findLanguage(l){
	var ls;
	ls = langs.filter(x => x.alpha2 == l);
	if(ls.length == 0){
		ls = langs.filter(x => x['alpha3-b'] == l);
	}
	if(ls.length > 0){
		return ls[0].English;
	}
	if(l in xlangs){
		return xlangs[l].canonicalName;
	}
	if(l in etolangs){
		return etolangs[l].canonicalName;
	}
	else return l;
}

