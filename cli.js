// import { getEtymologies, textifyEtymologies } from './parseWiki';
const {getEtymologies, textifyEtymologies} = require('./parseWiki');

const wd = process.argv[2];
if(!wd){
  console.error(`Usage: node etymology <word> `);
  process.exit(1);
}

async function main(){
  const senses = await getEtymologies(wd);
  console.log(textifyEtymologies(senses));
}

main().then(() => console.log('Done.')).catch(err => {
  console.error('We might have run into an error!');
  console.error(err.message);
});