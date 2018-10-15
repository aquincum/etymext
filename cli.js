// import { getEtymologies, textifyEtymologies } from './parseWiki';
const { Dictionary } = require('./dictionary');
const { Word } = require('./wikiTypes')

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

async function bagEtymology(argv){
  const rawInput = await getStdin();
  const input = rawInput.replace(/\s+/, ' ').replace('\n', '');
  const dict = new Dictionary(argv.language);
  await dict.load();
  const words = await Promise.all(input.split(' ').map(dict.fetchWord.bind(dict)));
  words.forEach(word => {
    console.log(` == ${word.word} == `);
    console.log(word.toString());
  })
  await dict.save();
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