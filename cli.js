// import { getEtymologies, textifyEtymologies } from './parseWiki';
const { Dictionary } = require('./dictionary');
const { Word } = require('./wikiTypes')
const { findLanguage } = require('./langs');

const yargs = require('yargs');
const argv = compileOptions();


function compileOptions(){
  return yargs
    .usage('Usage: $0 command args')
    .option('language', {
      alias: ['lang', 'l'],
      default: 'English',
      type: 'string',
      desc: 'language of the etymology'
    })
    .command({
      command: 'single <word>', 
      aliases: ['s'],
      desc: 'etymology of a single word',
      handler: argv => {
        handleThen(singleEtymology(argv));
      }
    })
    .command({
      command: 'bag',
      desc: 'etymology of a bag of words, using the dictionary cache',
      handler: argv => {
        handleThen(bagEtymology(argv))
      }
    })
    .command({
      command: 'stats',
      desc: 'stats of a dictionary',
      handler: argv => {
        handleThen(dictStats(argv));
      }
    })
    .command({
      command: 'table',
      desc: 'generate cognate table',
      handler: argv => {
        handleThen(cognateTable(argv));
      }
    })
    .help('help')
    .argv;
}

async function singleEtymology(argv){
  const wd = argv.word;
  const targetLang = argv.language;
  const word = new Word(wd, targetLang);
  const senses = await word.fetchWiktionary();
  const etyms  = word.toString();
  console.log(etyms);
  console.log('Main ones:');
  console.log(senses.map((sense, i) => `Sense ${i}: ${sense.mainEtymology().toString()}`).join('\n'));
}


function cleanInput(input){
  return input
    .replace('\n', ' ')
    .replace(/['":;\.,]/g,'')
    .replace(/\s+/g, ' ')
    .toLowerCase();
}


async function bagEtymology(argv){
  const rawInput = await getStdin();
  const input = cleanInput(rawInput);
  const dict = new Dictionary(argv.language);
  await dict.load();
  const words = await Promise.all(input.split(' ').map(dict.fetchWord.bind(dict)));
  words.forEach(word => {
    console.log(` == ${word.word} == `);
    console.log(word.toString());
  })
  await dict.save();
}

async function dictStats(argv){
  const dict = new Dictionary(argv.language);
  await dict.load();
  const res = dict.countMainOrigins();
  console.log('Inherited from:');
  console.log(Object.keys(res.inherited).map(i => `${findLanguage(i)}: ${res.inherited[i]}`).join('\n'));
  console.log('Borrowed from:');
  console.log(Object.keys(res.borrowed).map(i => `${findLanguage(i)}: ${res.borrowed[i]}`).join('\n'));
  console.log('Derived from:');
  console.log(Object.keys(res.derived).map(i => `${findLanguage(i)}: ${res.derived[i]}`).join('\n'));
  console.log('Etymologied from:');
  console.log(Object.keys(res.etymology).map(i => `${findLanguage(i)}: ${res.etymology[i]}`).join('\n'));
}



async function cognateTable(argv){
  const cognateTableConfig = {
    "English": {
      main: "en",
      history: [
        "enm",
        "ang",
        "gem-pro",
        "ine-pro"
      ]
    }
  }
  if(!cognateTableConfig[argv.language]){
    console.log('Supported languages: ' + Object.keys(cognateTableConfig).join(', '));
    return;
  }
  const dict = new Dictionary(argv.language);
  await dict.load();
  const table = dict.generateCognateTable(cognateTableConfig[argv.language])
  process.stdout.write(`${findLanguage(cognateTableConfig[argv.language].main)}\t\t`)
  console.log(cognateTableConfig[argv.language].history.map(l => `${findLanguage(l)}`).join('\t'));
  console.log(cognateTableConfig[argv.language]);
  table.forEach(row => {
    if(row.length != cognateTableConfig[argv.language].history.length+1){
      console.log('Warning: row does not have the expected length!');
    }
    process.stdout.write(`${row[0]}\t`);
    console.log(row.slice(1).map(t => {
      if(t.length == 0 || !t) return '\t';
      return t.map(tt => `${tt.getForm()}`).join(',');
      // return t.map(tt => `${tt.getForm()}${tt.getMeaning() ? ` '${tt.getMeaning()}'` : '' }`).join(',');
    }).join('\t'));
  })
}


function getStdin(){
  return new Promise((resolve, reject) => {
    process.stdin.resume();
    process.stdin.setEncoding('utf-8');
    let inputString = '';
    process.stdin.on('data', inputStdin => {
      inputString += inputStdin;
    });

    process.stdin.on('end', function() {
        resolve(inputString);
    });
  });
}


function handleThen(promise){
  promise.then(() => console.log('Done.')).catch(err => {
    console.error('We might have run into an error!');
    console.error(err.message);
    console.trace(err);
  });
}