local json = require "./json"

local m = {}

m["aav-ban-pro"] = {
	canonicalName = "Proto-Bahnaric",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "aav-ban",
}

m["aav-khm-pro"] = {
	canonicalName = "Proto-Khmuic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "aav-khm",
}

m["aav-pro"] = {
	canonicalName = "Proto-Austro-Asiatic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aav",
}

m["afa-pro"] = {
	canonicalName = "Proto-Afro-Asiatic",
	otherNames = {"Hamito-Semitic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "afa",
}

m["alg-aga"] = {
	canonicalName = "Agawam",
	otherNames = {"Agwam", "Agaam"},
	scripts = {"Latn"},
	family = "alg",
}

m["alg-pro"] = {
	canonicalName = "Proto-Algonquian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "alg",
	sort_key = {
		from = {"·"},
		to   = {""}},
}

m["alv-ama"] = {
	canonicalName = "Amasi",
	scripts = {"Latn"},
	family = "nic-bco",
	entry_name = {
		from = {"[àáâãā]", "[èéêē]", "[ìíîī]", "[òóôõō]", "[ùúûũū]", GRAVE, ACUTE, CIRC, TILDE, MACRON},
		to   = {"a",       "e",      "i",      "o",       "u"}},
}

m["alv-bgu"] = {
	canonicalName = "Baïnounk Gubëeher",
	otherNames = {"Gubëeher", "Nyun Gubëeher", "Nun Gubëeher"},
	scripts = {"Latn"},
	family = "alv-sng",
}

m["alv-edo-pro"] = {
	canonicalName = "Proto-Edoid",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "alv-edo",
}

m["alv-gwa"] = {
	canonicalName = "Gwara",
	scripts = {"Latn"},
	family = "nic-bco",
}

m["alv-pro"] = {
	canonicalName = "Proto-Atlantic-Congo",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "alv",
}

m["apa-pro"] = {
	canonicalName = "Proto-Apachean",
	otherNames = {"Proto-Apache", "Proto-Southern Athabaskan"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "apa",
}

m["aql-pro"] = {
	canonicalName = "Proto-Algic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aql",
	sort_key = {
		from = {"·"},
		to   = {""}},
}

m["art-blk"] = {
	canonicalName = "Bolak",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-bsp"] = {
	canonicalName = "Black Speech",
	type = "appendix-constructed",
	scripts = {"Latn", "Teng"},
	family = "art",
}

m["art-com"] = {
	canonicalName = "Communicationssprache",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-dtk"] = {
	canonicalName = "Dothraki",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-elo"] = {
	canonicalName = "Eloi",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-gld"] = {
	canonicalName = "Goa'uld",
	type = "appendix-constructed",
	scripts = {"Latn", "Egyp", "Mero"},
	family = "art",
}

m["art-lap"] = {
	canonicalName = "Lapine",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-man"] = {
	canonicalName = "Mandalorian",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-mun"] = {
	canonicalName = "Mundolinco",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-nav"] = {
	canonicalName = "Na'vi",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-nox"] = {
	canonicalName = "Noxilo",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-top"] = {
	canonicalName = "Toki Pona",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["art-una"] = {
	canonicalName = "Unas",
	type = "appendix-constructed",
	scripts = {"Latn"},
	family = "art",
}

m["ath-pro"] = {
	canonicalName = "Proto-Athabaskan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ath",
}

m["auf-pro"] = {
	canonicalName = "Proto-Arawa",
	otherNames = {"Proto-Arawan", "Proto-Arauan"},
	type = "reconstructed",
	family = "auf",
}

m["aus-arn-pro"] = {
	canonicalName = "Proto-Arnhem",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-arn",
}

m["aus-cww-pro"] = {
	canonicalName = "Proto-Central New South Wales",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-cww",
}

m["aus-dal-pro"] = {
	canonicalName = "Proto-Daly",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-dal",
}

m["aus-nyu-pro"] = {
	canonicalName = "Proto-Nyulnyulan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-nyu",
}

m["aus-pam-pro"] = {
	canonicalName = "Proto-Pama-Nyungan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-pam",
}

m["aus-wdj-pro"] = {
	canonicalName = "Proto-Iwaidjan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "aus-wdj",
}

m["aus-won"] = {
	canonicalName = "Wong-gie",
	family = "aus-pam",
}

m["awd-ama"] = {
	canonicalName = "Amarizana",
	scripts = {"Latn"},
	family = "awd",
}

m["awd-ana"] = {
	canonicalName = "Anauyá",
	otherNames = {"Anauya"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-apo"] = {
	canonicalName = "Apolista",
	otherNames = {"Lapachu"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-cav"] = {
	canonicalName = "Cavere",
	otherNames = {"Cabre", "Cabere", "Cávere"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-gnu"] = {
	canonicalName = "Guinau",
	otherNames = {"Guinao", "Inao", "Guniare", "Quinhau", "Guiano"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-kar"] = {
	canonicalName = "Cariay",
	otherNames = {"Kariaí", "Kariai", "Cariyai", "Carihiahy"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-kaw"] = {
	canonicalName = "Kawishana",
	otherNames = {"Cawishana", "Cayuishana", "Kaishana", "Cauixana"},
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["awd-kus"] = {
	canonicalName = "Kustenau",
	otherNames = {" Kustenaú", "Custenau", "Kutenabu"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-man"] = {
	canonicalName = "Manao",
	scripts = {"Latn"},
	family = "awd",
}

m["awd-mpr"] = {
	canonicalName = "Maypure",
	otherNames = {"Maipure"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-mrt"] = {
	canonicalName = "Mariaté",
	otherNames = {"Mariate"},
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["awd-nwk-pro"] = {
	canonicalName = "Proto-Nawiki",
	otherNames = {"Proto-Newiki"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["awd-pai"] = {
	canonicalName = "Paikoneka",
	otherNames = {"Paiconeca", "Paicone"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-pas"] = {
	canonicalName = "Passé",
	otherNames = {"Pasé", "Pazé"},
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["awd-pro"] = {
	canonicalName = "Proto-Arawakan",
	otherNames = {"Proto-Arawak", "Proto-Maipurean", "Proto-Maipuran"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "awd",
}

m["awd-she"] = {
	canonicalName = "Shebayo",
	otherNames = {"Shebaya", "Shebaye"},
	scripts = {"Latn"},
	family = "awd",
}

m["awd-taa-pro"] = {
	canonicalName = "Proto-Ta-Arawakan",
	otherNames = {"Proto-Ta-Arawak", "Proto-Caribbean Northern Arawak"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "awd-taa",
}

m["awd-wai"] = {
	canonicalName = "Wainumá",
	otherNames = {"Wainuma", "Wai", "Waima", "Wainumi", "Wainambí", "Waiwana", "Waipi", "Yanuma"},
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["awd-yum"] = {
	canonicalName = "Yumana",
	otherNames = {"Jumana"},
	scripts = {"Latn"},
	family = "awd-nwk",
}

m["azc-caz"] = {
	canonicalName = "Cazcan",
	otherNames = {"Caxcan", "Kaskán"},
	scripts = {"Latn"},
	family = "azc",
}

m["azc-cup-pro"] = {
	canonicalName = "Proto-Cupan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "azc-cup",
}

m["azc-ktn"] = {
	canonicalName = "Kitanemuk",
	otherNames = {"Gitanemuk"},
	scripts = {"Latn"},
	family = "azc-tak",
}

m["azc-nah-pro"] = {
	canonicalName = "Proto-Nahuan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "azc-nah",
}

m["azc-num-pro"] = {
	canonicalName = "Proto-Numic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "azc-num",
}

m["azc-pro"] = {
	canonicalName = "Proto-Uto-Aztecan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "azc",
}

m["azc-tak-pro"] = {
	canonicalName = "Proto-Takic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "azc-tak",
}

m["azc-tat"] = {
	canonicalName = "Tataviam",
	scripts = {"Latn"},
	family = "azc",
}

m["ber-pro"] = {
	canonicalName = "Proto-Berber",
	type = "reconstructed",
	family = "ber",
}

m["bnt-ngu-pro"] = {
	canonicalName = "Proto-Nguni",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "bnt-ngu",
}

m["bnt-phu"] = {
	canonicalName = "Phuthi",
	otherNames = {"Siphuthi"},
	scripts = {"Latn"},
	family = "bnt-ngu",
}

m["bnt-pro"] = {
	canonicalName = "Proto-Bantu",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "bnt",
	sort_key = {
                from = {"[àá]", "[èé]", "[ìí]", "[òó]", "[ùú]", "[ǹń]", "ɪ" , "ʊ" , ACUTE, GRAVE},
                to   = {"a"   , "e"   , "i2"  , "o"   , "u2"  , "n"   , "i1", "u1"}},
}

m["btk-pro"] = {
	canonicalName = "Proto-Batak",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "btk",
}

m["cau-abz-pro"] = {
	canonicalName = "Proto-Abkhaz-Abaza",
	otherNames = {"Proto-Abazgi", "Proto-Abkhaz-Tapanta"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-abz",
}

m["cau-ava-pro"] = {
	canonicalName = "Proto-Avaro-Andian",
	otherNames = {"Proto-Avar-Andian", "Proto-Avar-Andi", "Proto-Avar-Andic", "Proto-Andian"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-ava",
}

m["cau-cir-pro"] = {
	canonicalName = "Proto-Circassian",
	otherNames = {"Proto-Adyghe-Kabardian", "Proto-Adyghe-Circassian"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-cir",
}

m["cau-drg-pro"] = {
	canonicalName = "Proto-Dargwa",
	otherNames = {"Proto-Dargin"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-drg",
}

m["cau-lzg-pro"] = {
	canonicalName = "Proto-Lezghian",
	otherNames = {"Proto-Lezgi", "Proto-Lezgian", "Proto-Lezgic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-lzg",
}

m["cau-nec-pro"] = {
	canonicalName = "Proto-Northeast Caucasian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-nec",
}

m["cau-nkh-pro"] = {
	canonicalName = "Proto-Nakh",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-nkh",
}

m["cau-nwc-pro"] = {
	canonicalName = "Proto-Northwest Caucasian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-nwc",
}

m["cau-tsz-pro"] = {
	canonicalName = "Proto-Tsezian",
	otherNames = {"Proto-Tsezic", "Proto-Didoic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cau-tsz",
}

m["cba-ata"] = {
	canonicalName = "Atanques",
	otherNames = {"Atanque", "Cancuamo", "Kankuamo", "Kankwe", "Kankuí", "Atanke"},
	scripts = {"Latn"},
	family = "cba",
}

m["cba-cat"] = {
	canonicalName = "Catío Chibcha",
	otherNames = {"Catio Chibcha", "Old Catio"},
	scripts = {"Latn"},
	family = "cba",
}

m["cba-dor"] = {
	canonicalName = "Dorasque",
	otherNames = {"Chumulu", "Changuena", "Changuina", "Chánguena", "Gualaca"},
	scripts = {"Latn"},
	family = "cba",
}

m["cba-dui"] = {
	canonicalName = "Duit",
	scripts = {"Latn"},
	family = "cba",
}

m["cba-hue"] = {
	canonicalName = "Huetar",
	otherNames = {"Güetar", "Guetar", "Brusela"},
	scripts = {"Latn"},
	family = "cba",
}

m["cba-nut"] = {
	canonicalName = "Nutabe",
	otherNames = {"Nutabane"},
	scripts = {"Latn"},
	family = "cba",
}

m["cba-pro"] = {
	canonicalName = "Proto-Chibchan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cba",
}

m["ccn-pro"] = {
	canonicalName = "Proto-North Caucasian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ccn",
}

m["ccs-pro"] = {
	canonicalName = "Proto-Kartvelian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ccs",
	entry_name = {
		from = {"q̣", "p̣", "ʓ", "ċ"},
		to   = {"q̇", "ṗ", "ʒ", "c̣"}},
}

m["ccs-gzn-pro"] = {
	canonicalName = "Proto-Georgian-Zan",
	otherNames = {"Proto-Karto-Zan"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ccs-gzn",
	entry_name = {
		from = {"q̣", "p̣", "ʓ", "ċ"},
		to   = {"q̇", "ṗ", "ʒ", "c̣"}},
}

m["cdc-cbm-pro"] = {
	canonicalName = "Proto-Central Chadic",
	otherNames = {"Proto-Central-Chadic", "Proto-Biu-Mandara"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "cdc-cbm",
}

m["cdc-pro"] = {
	canonicalName = "Proto-Chadic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "cdc",
}

m["cdd-pro"] = {
	canonicalName = "Proto-Caddoan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cdd",
}

m["cel-bry-pro"] = {
	canonicalName = "Proto-Brythonic",
	otherNames = {"Proto-Brittonic"},
	scripts = {"Latinx"},
	family = "cel-bry",
}

m["cel-gal"] = {
	canonicalName = "Gallaecian",
	family = "cel",
}

m["cel-gau"] = {
	canonicalName = "Gaulish",
	scripts = {"Latn", "Grek"},
	family = "cel",
}

m["cel-pro"] = {
	canonicalName = "Proto-Celtic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cel",
	sort_key = {
		from = {"[ɸφ]"},
		to   = {"f"}},
}

m["chi-pro"] = {
	canonicalName = "Proto-Chimakuan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "chi",
}

m["cmc-pro"] = {
	canonicalName = "Proto-Chamic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "cmc",
}

m["cpe-mar"] = {
	canonicalName = "Maroon Spirit Language",
	otherNames = {"Jamaican Maroon Spirit Possession Language"},
	scripts = {"Latn"},
	family = "crp",
	ancestors = {"en"},
}

m["cpe-spp"] = {
	canonicalName = "Samoan Plantation Pidgin",
	scripts = {"Latn"},
	family = "crp",
	ancestors = {"en"},
}

m["crp-gep"] = {
	canonicalName = "Greenlandic Pidgin",
	otherNames = {"West Greenlandic Pidgin", "Greenlandic Eskimo Pidgin"},
	scripts = {"Latn"},
	family = "crp",
}

m["crp-rsn"] = {
	canonicalName = "Russenorsk",
	scripts = {"Cyrl", "Latn"},
	family = "crp",
	ancestors = {"no", "ru"},
}

m["crp-tpr"] = {
	canonicalName = "Taimyr Pidgin Russian",
	scripts = {"Cyrl"},
	family = "crp",
}

m["cus-pro"] = {
	canonicalName = "Proto-Cushitic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "afa",
}

m["dra-pro"] = {
	canonicalName = "Proto-Dravidian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "dra",
}

m["dru-pro"] = {
	canonicalName = "Proto-Rukai",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "map",
}

m["esx-esk-pro"] = {
	canonicalName = "Proto-Eskimo",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "esx-esk",
}

m["esx-inu-pro"] = {
	canonicalName = "Proto-Inuit",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "esx-inu",
}

m["esx-pro"] = {
	canonicalName = "Proto-Eskimo-Aleut",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "esx",
}

m["euq-pro"] = {
	canonicalName = "Proto-Basque",
	otherNames = {"Proto-Vasconic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "euq",
}

m["fiu-fin-pro"] = {
	canonicalName = "Proto-Finnic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "fiu-fin",
}

m["fiu-mdv-pro"] = {
	canonicalName = "Proto-Mordvinic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "fiu-mdv",
}

m["fiu-prm-pro"] = {
	canonicalName = "Proto-Permic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "fiu-prm",
}

m["fiu-ugr-pro"] = {
	canonicalName = "Proto-Ugric",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "fiu-ugr",
}

m["gem-bur"] = {
	canonicalName = "Burgundian",
	otherNames = {"Burgundish", "Burgundic"},
	family = "gem",
}

m["gem-pro"] = {
	canonicalName = "Proto-Germanic",
	otherNames = {"Common Germanic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "gem",
	sort_key = {
		from = {"ā", "[ēê]", "ī", "[ōô]", "ū", "ą" , "į" , "ǫ" , "ų" , CIRC, MACRON},
		to   = {"a" , "e"  , "i", "o"   , "u", "an", "in", "on", "un"}},
}

m["gme-cgo"] = {
	canonicalName = "Crimean Gothic",
	scripts = {"Latn"},
	family = "gme",
}

m["gmq-bot"] = {
	canonicalName = "Westrobothnian",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-gut"] = {
	canonicalName = "Gutnish",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-jmk"] = {
	canonicalName = "Jamtish",
	otherNames = {"Jamtlandic"},
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-mno"] = {
	canonicalName = "Middle Norwegian",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-oda"] = {
	canonicalName = "Old Danish",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-osw"] = {
	canonicalName = "Old Swedish",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmq-pro"] = {
	canonicalName = "Proto-Norse", -- attested
	scripts = {"Runr"},
	family = "gmq",
	translit_module = "Runr-translit",
}

m["gmq-scy"] = {
	canonicalName = "Scanian",
	scripts = {"Latn"},
	family = "gmq",
	ancestors = {"non"},
}

m["gmw-cfr"] = {
	canonicalName = "Central Franconian",
	otherNames = {"Mittelfränkisch", "Ripuarian", "Moselle Franconian", "Colognian", "Kölsch"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmh"},
	wikimedia_codes = {"ksh"},
}

m["gmw-gts"] = {
	canonicalName = "Gottscheerish",
	otherNames = {"Gottscheerisch"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"bar"},
}

m["gmw-hfr"] = {
	canonicalName = "High Franconian",
	otherNames = {"East Franconian", "South Franconian", "Franconian", "Oberfränkisch"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmh"},
	wikimedia_codes = {"ksh"},
}

m["gmw-jdt"] = {
	canonicalName = "Jersey Dutch",
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"nl"},
}

m["gmw-rfr"] = {
	canonicalName = "Rhine Franconian",
	otherNames = {"Rheinfränkisch", "Rhenish Franconian", "Hessian", "Lorraine Franconian", "Lorrainian", "Lothringisch", "Palatine German", "Pfälzisch", "Pälzisch", "Palatinate German"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmh"},
}

m["gmw-stm"] = {
	canonicalName = "Sathmar Swabian",
	otherNames = {"Satu Mare Swabian", "Sathmarschwäbisch", "Sathmarisch"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"swg"},
}

m["gmw-tsx"] = {
	canonicalName = "Transylvanian Saxon",
	otherNames = {"Siebenbürger Saxon"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmw-cfr"},
}

m["gmw-vog"] = {
	canonicalName = "Volga German",
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmw-rfr"},
}

m["gmw-zps"] = {
	canonicalName = "Zipser German",
	otherNames = {"Zipser", "Zipserisch", "Outzäpsersch"},
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"gmh"},
}

m["grk-cal"] = {
	canonicalName = "Calabrian Greek",
	otherNames = {"Italian Greek", "Bova"}, -- NB the related lect Griko has the etym-only code 'el-grk'
	scripts = {"Latn"},
	family = "grk",
	ancestors = {"grc"},
}

m["grk-pro"] = {
	canonicalName = "Proto-Hellenic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "grk",
}

m["hmn-pro"] = {
	canonicalName = "Proto-Hmong",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "hmn",
}

m["hmx-mie-pro"] = {
	canonicalName = "Proto-Mien",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "hmx-mie",
}

m["hmx-pro"] = {
	canonicalName = "Proto-Hmong-Mien",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "hmx",
}

m["hyx-pro"] = {
	canonicalName = "Proto-Armenian",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "hyx",
}

m["iir-nur-pro"] = {
	canonicalName = "Proto-Nuristani",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "iir-nur",
}

m["iir-pro"] = {
	canonicalName = "Proto-Indo-Iranian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "iir",
}

m["inc-ogu"] = {
	canonicalName = "Old Gujarati",
	scripts = {"Deva"},
	family = "inc",
	ancestors = {"psu"},
}

m["inc-ohi"] = {
	canonicalName = "Old Hindi",
	scripts = {"Deva"},
	family = "inc",
	ancestors = {"psu"},
	translit_module = "sa-translit",
}

m["inc-pro"] = {
	canonicalName = "Proto-Indo-Aryan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "inc",
}

m["inc-dar-pro"] = {
	canonicalName = "Proto-Dardic",
	otherNames = {"Proto-Rigvedic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "inc-dar",
}

m["ine-ana-pro"] = {
	canonicalName = "Proto-Anatolian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ine-ana",
}

m["ine-bsl-pro"] = {
	canonicalName = "Proto-Balto-Slavic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ine-bsl",
	sort_key = {
		from = {"[áā]", "[éēḗ]", "[íī]", "[óōṓ]", "[úū]", ACUTE, MACRON, "ˀ"},
		to   = {"a", "e", "i", "o", "u"}},
}

m["ine-pae"] = {
	canonicalName = "Paeonian",
	scripts = {"polytonic"},
	family = "ine",
	translit_module = "grc-translit",
	sort_key = {  -- Keep this synchronized with grc and others synced to it
		from = {"[ᾳάᾴὰᾲᾶᾷἀᾀἄᾄἂᾂἆᾆἁᾁἅᾅἃᾃἇᾇᾱᾍ]", "[έὲἐἔἒἑἕἓ]", "[ῃήῄὴῂῆῇἠᾐἤᾔἢᾒἦᾖἡᾑἥᾕἣᾓἧᾗ]", "[ίὶῖἰἴἲἶἱἵἳἷϊΐῒῗῑ]", "[όὸὀὄὂὁὅὃ]", "[ύὺῦὐὔὒὖὑὕὓὗϋΰῢῧῡ]", "[ῳώῴὼῲῶῷὠᾠὤᾤὢᾢὦᾦὡᾡὥᾥὣᾣὧᾧᾨ]", "ῥ", "ς"},
		to   = {"α"						, "ε"		 , "η"						, "ι"				, "ο"		 , "υ"				, "ω"						, "ρ", "σ"}},
	entry_name = {
		from = {"[ᾸᾹ]", "[ᾰᾱ]", "[ῘῙ]", "[ῐῑ]", "[ῨῩ]", "[ῠῡ]"},
		to   = {"Α", "α", "Ι", "ι", "Υ", "υ"}},
}

m["ine-pro"] = {
	canonicalName = "Proto-Indo-European",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ine",
	sort_key = {
		from = {"[áā]", "[éēḗ]", "[íī]", "[óōṓ]", "[úū]", "ĺ", "ḿ", "ń", "ŕ", "ǵ" , "ḱ" , "ʰ", "ʷ", "₁", "₂", "₃", RINGBELOW, ACUTE, MACRON},
		to   = {"a"   , "e"	, "i"   , "o"	, "u"   , "l", "m", "n", "r", "g'", "k'", "¯h", "¯w", "1", "2", "3"}},
}

m["ine-toc-pro"] = {
	canonicalName = "Proto-Tocharian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ine-toc",
}

m["ira-azr"] = {
	canonicalName = "Old Azari",
	otherNames = {"Old Azeri", "Azari", "Azeri", "Āḏarī", "Adari", "Adhari"},
	scripts = {"fa-Arab"},
	family = "ira-wes",
}

m["ira-klt"] = {
	canonicalName = "Kilit",
	ancestors = {"ira-azr"},
}

m["ira-kls"] = {
	canonicalName = "Kalasuri",
	otherNames = {"Kalāsuri", "Kalasur", "Kalāsur"},
	ancestors = {"ira-azr"},
}

m["ira-pro"] = {
	canonicalName = "Proto-Iranian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ira",
}

m["iro-min"] = {
	canonicalName = "Mingo",
	scripts = {"Latn"},
	family = "iro",
}

m["iro-pro"] = {
	canonicalName = "Proto-Iroquoian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "iro",
}

m["itc-ola"] = {
	canonicalName = "Old Latin",
	otherNames = {"Archaic Latin", "Early Latin", "Pre-Classical Latin", "Ante-Classical Latin"},
	scripts = {"Latn", "Ital"},
	family = "itc",
	entry_name = {
		from = {"Ā", "ā", "Ē", "ē", "Ī", "ī", "Ō", "ō", "Ū", "ū", "Ȳ", "ȳ"},
		to   = {"A", "a", "E", "e", "I", "i", "O", "o", "U", "u", "Y", "y"}},
	translit_module = "Ital-translit",
}

m["itc-pro"] = {
	canonicalName = "Proto-Italic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "itc",
}

m["jpx-pro"] = {
	canonicalName = "Proto-Japonic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "jpx",
}

m["jpx-ryu-pro"] = {
	canonicalName = "Proto-Ryukyuan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "jpx-ryu",
}

m["khi-kun"] = {
	canonicalName = "ǃKung",
	otherNames = {"ǃOǃKung", "ǃ'OǃKung", "Kung", "Ekoka ǃKung", "Ekoka Kung", "Sekele"},
	scripts = {"Latn"},
	family = "khi",
}

m["map-ata-pro"] = {
	canonicalName = "Proto-Atayalic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "map-ata",
}

m["map-bms"] = {
	canonicalName = "Banyumasan",
	family = "map",
}

m["map-pro"] = {
	canonicalName = "Proto-Austronesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "map",
}

m["mkh-mkm"] = {
	canonicalName = "Middle Khmer",
	scripts = {"Latn"},
	family = "mkh",
	ancestors = {"mkh-okm"},
}

m["mkh-mvi"] = {
	canonicalName = "Middle Vietnamese",
	scripts = {"Latn", "Hani"},
	family = "mkh-vie",
}

m["mkh-okm"] = {
	canonicalName = "Old Khmer",
	scripts = {"Latn"},
	family = "mkh",
}
m["mkh-pro"] = {
	canonicalName = "Proto-Mon-Khmer",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "mkh",
}

m["mkh-vie-pro"] = {
	canonicalName = "Proto-Vietic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "mkh-vie",
}

m["myn-chl"] = { -- the stage after ''emy''
	canonicalName = "Ch'olti'",
	otherNames = {"Cholti", "Colonial Ch'olti'", "Colonial Cholti"},
	scripts = {"Latinx"},
	family = "myn",
}

m["myn-pro"] = {
	canonicalName = "Proto-Mayan",
	otherNames = {"Proto-Maya"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "myn",
}

m["nai-bay"] = {
	canonicalName = "Bayogoula",
	otherNames = {"Bayougoula", "Bayou Goula", "Ischenoca"}, -- tribe merged with "Mougulasha", "Mongoulacha", "Mugulasha", "Mougulasha", "Muglahsa", "Muglasha", "Muguasha", "Imongolosha", "Houma", "Acolapissa"
	scripts = {"Latn"},
}

m["nai-bvy"] = {
	canonicalName = "Buena Vista Yokuts",
	otherNames = {"Tulamni-Hometwoli", "Tulamni", "Tulamne", "Tuolumne", "Tawitchi", "Hometwoli", "Taneshach"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-cal"] = {
	canonicalName = "Calusa",
	scripts = {"Latn"},
}

m["nai-chi"] = {
	canonicalName = "Chiquimulilla",
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nai-chu-pro"] = {
	canonicalName = "Proto-Chumash",
	otherNames = {"Proto-Chumashan"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-chu",
}

m["nai-cig"] = {
	canonicalName = "Ciguayo",
	scripts = {"Latn"},
}

m["nai-ckn-pro"] = {
	canonicalName = "Proto-Chinookan",
	otherNames = {"Proto-Chinook"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-ckn",
}

m["nai-cui"] = {
	canonicalName = "Cuitlatec",
	otherNames = {"Cuitlateco"},
	scripts = {"Latn"},
}

m["nai-dly"] = {
	canonicalName = "Delta Yokuts",
	otherNames = {"Far Northern Valley Yokuts", "Yachikumne", "Yachikumni", "Chulamni", "Lower San Joaquin", "Lakisamni", "Tawalimni"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-gsy"] = {
	canonicalName = "Gashowu",
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-guz"] = {
	canonicalName = "Guazacapán",
	otherNames = {"Guazacapan"},
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nai-jtp"] = {
	canonicalName = "Jutiapa",
	otherNames = {"Xutiapa", "Jalapa", "Xalapa"},
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nai-jum"] = {
	canonicalName = "Jumaytepeque",
	otherNames = {"Jumaitepeque", "Jumaytepec"},
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nai-kat"] = {
	canonicalName = "Kathlamet",
	otherNames = {"Kathlamet Chinook"},
	scripts = {"Latn"},
	family = "nai-ckn",
}

m["nai-knm"] = {
	canonicalName = "Konomihu",
	scripts = {"Latn"},
	family = "nai-shs",
}

m["nai-kry"] = {
	canonicalName = "Kings River Yokuts",
	otherNames = {"Choinimni", "Choynimni", "Ayticha", "Kocheyali", "Ayitcha", "Michahay", "Chukaymina", "Chukaimina"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-mac"] = {
	canonicalName = "Macoris",
	otherNames = {"Macorís", "Macorix", "Mazorij", "Mazorig", "Mazoriges"},
	scripts = {"Latn"},
}

m["nai-mdu-pro"] = {
	canonicalName = "Proto-Maidun",
	otherNames = {"Proto-Maiduan"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-mdu",
}

m["nai-miz-pro"] = {
	canonicalName = "Proto-Mixe-Zoque",
	otherNames = {"Proto-Mixe-Zoquean"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-miz",
}

m["nai-nao"] = {
	canonicalName = "Naolan",
	scripts = {"Latn"},
}

m["nai-nrs"] = {
	canonicalName = "New River Shasta",
	scripts = {"Latn"},
	family = "nai-shs",
}

m["nai-nvy"] = {
	canonicalName = "Northern Valley Yokuts",
	otherNames = {"Chukchansi", "Kechayi", "Dumna", "Chawchila", "Noptinte", "Nopṭinṭe", "Nopthrinthre", "Nopchinchi", "Takin"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-okw"] = {
	canonicalName = "Okwanuchu",
	scripts = {"Latn"},
	family = "nai-shs",
}

m["nai-per"] = {
	canonicalName = "Pericú",
	scripts = {"Latn"},
}

m["nai-pic"] = {
	canonicalName = "Picuris",
	scripts = {"Latn"},
	family = "nai-kta",
}

m["nai-ply"] = {
	canonicalName = "Palewyami",
	otherNames = {"Paleuyami", "Altinin", "Poso Creek", "Poso Creek Yokuts"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-pom-pro"] = {
	canonicalName = "Proto-Pomo",
	otherNames = {"Proto-Pomoan"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nai-pom",
}

m["nai-sca-pro"] = { -- NB 'sio-pro' "Proto-Siouan" which is Proto-Western Siouan
	canonicalName = "Proto-Siouan-Catawban",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-sca",
}

m["nai-sin"] = {
	canonicalName = "Sinacantán",
	otherNames = {"Sinacantan", "Zinacantán", "Zinacantan"},
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nai-sln"] = {
	canonicalName = "Salvadoran Lenca",
	scripts = {"Latn"},
	family = "nai-len",
}

m["nai-svy"] = {
	canonicalName = "Southern Valley Yokuts",
	otherNames = {"Yawelmani", "Tachi", "Koyeti", "Nutunutu", "Chunut", "Wo'lasi", "Choynok", "Choinok", "Wechihit"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-tap"] = {
	canonicalName = "Tapachultec",
	otherNames = {"Tapachulteca", "Tapachulteco", "Tapachula"},
	scripts = {"Latn"},
	family = "nai-miz",
}

m["nai-teq"] = {
	canonicalName = "Tequistlatec", -- distinguish chd, clo
	otherNames = {"Tequistlateco", "Tequistlateca", "Chontal", "Chontol of Oaxaca", "Oaxaca Chontal", "Oaxacan Chontal"},
	scripts = {"Latn"},
	family = "nai-tqn",
}

m["nai-tip"] = {
	canonicalName = "Tipai",
	otherNames = {"Tipay", "Tiipai", "Tiipay", "Jamul Tiipay"},
	scripts = {"Latn"},
	family = "nai-yuc",
}

m["nai-tky"] = {
	canonicalName = "Tule-Kaweah Yokuts",
	otherNames = {"Wikchamni", "Wukchamni", "Wukchumni", "Yawdanchi"},
	scripts = {"Latn"},
	family = "nai-yok",
}

m["nai-tot-pro"] = {
	canonicalName = "Proto-Totozoquean",
	type = "reconstructed",
	family = "nai-tot",
}

m["nai-utn-pro"] = {
	canonicalName = "Proto-Utian",
	otherNames = {"Proto-Miwok-Costanoan"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "nai-utn",
}

m["nai-wai"] = {
	canonicalName = "Waikuri",
	otherNames = {"Guaycura", "Waicura"},
	scripts = {"Latn"},
}

m["nai-yav"] = {
	canonicalName = "Yavapai",
	otherNames = {"Kwevkepaya", "Wipukpaya", "Tolkepaya", "Yavepe"},
	scripts = {"Latn"},
	family = "nai-yuc",
}

m["nai-yup"] = {
	canonicalName = "Yupiltepeque",
	otherNames = {"Jupiltepeque", "Yupiltepec", "Jupiltepec", "Xupiltepec"},
	scripts = {"Latn"},
	family = "nai-xin",
}

m["nds-de"] = {
	canonicalName = "German Low German",
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"nds"},
	wikimedia_codes = {"nds"},
}

m["nds-nl"] = {
	canonicalName = "Dutch Low Saxon",
	scripts = {"Latn"},
	family = "gmw",
	ancestors = {"nds"},
}

m["nic-bco-pro"] = {
	canonicalName = "Proto-Benue-Congo",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nic-bco",
}

m["nic-bod-pro"] = {
	canonicalName = "Proto-Bantoid",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nic-bod",
}

m["nic-gur-pro"] = {
	canonicalName = "Proto-Gur",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nic-gur",
}

m["nic-pro"] = {
	canonicalName = "Proto-Niger-Congo",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nic",
}

m["nic-ubg-pro"] = {
	canonicalName = "Proto-Ubangian",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nic-ubg",
}

m["nub-pro"] = {
	canonicalName = "Proto-Nubian",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "nub",
}

m["omq-pro"] = {
	canonicalName = "Proto-Oto-Manguean",
	otherNames = {"Proto-Otomanguean", "Proto-Oto-Mangue"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "omq",
}

m["omq-maz-pro"] = {
	canonicalName = "Proto-Mazatec",
	otherNames = {"Proto-Mazatecan"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "omq-maz",
}

m["omq-mix-pro"] = {
	canonicalName = "Proto-Mixtecan",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "omq-mix",
}

m["paa-kwn"] = {
	canonicalName = "Kuwani",
	scripts = {"Latn"},
	family = "paa",
}

m["phi-din"] = {
	canonicalName = "Dinapigue Agta",
	scripts = {"Latn"},
	family = "phi",
}

m["phi-nag"] = {
	canonicalName = "Nagtipunan Agta",
	scripts = {"Latn"},
	family = "phi",
}

m["phi-pro"] = {
	canonicalName = "Proto-Philippine",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "phi",
}

m["plf-pro"] = {
	canonicalName = "Proto-Central Malayo-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "plf",
}

m["poz-abi"] = {
	canonicalName = "Abai",
	otherNames = {"Sembuak", "Tubu"},
	scripts = {"Latn"},
	family = "poz-san",
}

m["poz-btk-pro"] = {
	canonicalName = "Proto-Bungku-Tolaki",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-btk",
}

m["poz-cet-pro"] = {
	canonicalName = "Proto-Central-Eastern Malayo-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "plf",
}

m["poz-hce-pro"] = {
	canonicalName = "Proto-Halmahera-Cenderawasih",
	otherNames = {"Proto-South Halmahera - West New Guinea"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-hce",
}

m["poz-lgx-pro"] = {
	canonicalName = "Proto-Lampungic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-lgx",
}

m["poz-mcm-pro"] = {
	canonicalName = "Proto-Malayo-Chamic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-msa",
}

m["poz-mly-pro"] = {
	canonicalName = "Proto-Malayic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-mly",
}

m["poz-msa-pro"] = {
	canonicalName = "Proto-Malayo-Sumbawan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-msa",
}

m["poz-oce-pro"] = {
	canonicalName = "Proto-Oceanic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-oce",
}

m["poz-pep-pro"] = {
	canonicalName = "Proto-Eastern Polynesian",
	otherNames = {"Proto-Eastern-Polynesian", "Proto-East Polynesian", "Proto-East-Polynesian"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-pol",
}

m["poz-pnp-pro"] = {
	canonicalName = "Proto-Nuclear Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-pol",
}

m["poz-pol-pro"] = {
	canonicalName = "Proto-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-pol",
}

m["poz-pro"] = {
	canonicalName = "Proto-Malayo-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz",
}

m["poz-ssw-pro"] = {
	canonicalName = "Proto-South Sulawesi",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-ssw",
}

m["poz-sus-pro"] = {
	canonicalName = "Proto-Sunda-Sulawesi",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "plf",
}

m["poz-swa-pro"] = {
	canonicalName = "Proto-North Sarawak",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "poz-swa",
}

m["pqe-pro"] = {
	canonicalName = "Proto-Eastern Malayo-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "pqe",
}

m["pqw-pro"] = {
	canonicalName = "Proto-Western Malayo-Polynesian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "pqw",
}

m["qfa-cka-pro"] = {
	canonicalName = "Proto-Chukotko-Kamchatkan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "qfa-cka",
}

m["qfa-hur-pro"] = {
	canonicalName = "Proto-Hurro-Urartian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "qfa-hur",
}

m["qfa-kor-pro"] = {
	canonicalName = "Proto-Korean",
	type = "reconstructed",
	family = "qfa-kor",
}

m["qfa-tak-pro"] = {
	canonicalName = "Proto-Tai-Kadai",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "qfa-tak",
}

m["qfa-yen-pro"] = {
	canonicalName = "Proto-Yeniseian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "qfa-yen",
}

m["qwe-kch"] = {
	canonicalName = "Kichwa",
	otherNames = {"Kichwa shimi", "Runashimi", "Runa", "Quichua", "Quecha", "Inga", "Chimborazo", "Imbabura Highland Kichwa", "Cañar Highland Quecha", "Quechua"},
	scripts = {"Latn"},
	family = "qwe",
}

m["roa-brg"] = {
	canonicalName = "Bourguignon",
	otherNames = {"Burgundian", "Bregognon", "Dijonnais", "Morvandiau", "Morvandeau", "Morvan", "Bourguignon-Morvandiau", "Mâconnais", "Brionnais", "Brionnais-Charolais", "Auxerrois", "Beaunois", "Langrois", "Valsaônois", "Verduno-Chalonnais", "Sédelocien"},
	scripts = {"Latn"},
	family = "roa",
	ancestors = {"fro"},
	sort_key = {
		from = {"[áàâä]", "[éèêë]", "[íìîï]", "[óòôö]", "[úùûü]", "[ýỳŷÿ]", "ç", "'"},
		to   = {"a"     , "e"     , "i"     , "o"     , "u"     , "y"     , "c"}},
}

m["roa-oca"] = {
	canonicalName = "Old Catalan",
	scripts = {"Latn"},
	family = "roa",
	ancestors = {"pro"},
	sort_key = {
		from = {"à", "[èé]", "[íï]", "[òó]", "[úü]", "ç", "·"},
		to   = {"a", "e"   , "i"   , "o"   , "u"   , "c"}},
}

m["roa-gal"] = {
	canonicalName = "Gallo",
	scripts = {"Latn"},
	family = "roa",
	ancestors = {"fro"},
	sort_key = {
		from = {"[áàâä]", "[éèêë]", "[íìîï]", "[óòôö]", "[úùûü]", "[ýỳŷÿ]", "ç", "'"},
		to   = {"a"     , "e"     , "i"     , "o"     , "u"     , "y"     , "c"}},
}

m["roa-leo"] = {
	canonicalName = "Leonese",
	scripts = {"Latn"},
	family = "roa",
}

m["roa-oan"] = {
	canonicalName = "Navarro-Aragonese",
	otherNames = {"Old Aragonese"},
	scripts = {"Latn"},
	family = "roa",
}

m["roa-ole"] = {
	canonicalName = "Old Leonese",
	scripts = {"Latn"},
	family = "roa",
}

m["roa-opt"] = {
	canonicalName = "Old Portuguese",
	otherNames = {"Galician-Portuguese", "Galician Portuguese", "Medieval Galician"},
	scripts = {"Latn"},
	family = "roa",
}

m["roa-tar"] = {
	canonicalName = "Tarantino",
	scripts = {"Latn"},
	family = "roa",
	wikimedia_codes = {"roa-tara"},
}

m["sai-ajg"] = {
	canonicalName = "Ajagua",
	otherNames = {"Axagua", "Jagua"},
	scripts = {"Latn"},
}

m["sai-all"] = {
	canonicalName = "Allentiac",
	otherNames = {"Alyentiyak", "Huarpe", "Warpe"},
	scripts = {"Latn"},
	family = "sai-hrp",
}

m["sai-ayo"] = {
	canonicalName = "Ayomán",
	otherNames = {"Ayoman", "Ayamán", "Ayaman"},
	scripts = {"Latn"},
	family = "sai-jir",
}

m["sai-bag"] = {
	canonicalName = "Bagua",
	otherNames = {"Patagón de Bagua"},
	scripts = {"Latn"},
}

m["sai-bet"] = {
	canonicalName = "Betoi",
	otherNames = {"Betoy", "Betoya", "Betoye", "Betoi-Jirara", "Jirara"},
	scripts = {"Latn"},
	family = "qfa-iso",
}

m["sai-cac"] = {
	canonicalName = "Cacán",
	otherNames = {"Kakán", "Diaguita", "Cacan", "Kakan", "Calchaquí", "Chaka", "Kaka", "Kaká", "Caca", "Caca-Diaguita", "Catamarcano", "Capayán", "Capayana", "Yacampis"},
	scripts = {"Latn"},
}

m["sai-caq"] = {
	canonicalName = "Caranqui",
	otherNames = {"Cara", "Kara"},
	scripts = {"Latn"},
}

m["sai-cat"] = {
	canonicalName = "Catacao",
	scripts = {"Latinx"},
	family = "sai-ctc",
}

m["sai-chi"] = {
	canonicalName = "Chirino",
	scripts = {"Latn"},
}

m["sai-chn"] = {
	canonicalName = "Chaná",
	otherNames = {"Chana", "Sari"},
	scripts = {"Latn"},
	family = "sai-crn",
}

m["sai-chp"] = {
	canonicalName = "Chapacura",
	otherNames = {"Txapacura", "Xapacura", "Guapore", "Šapakura", "Txapakura", "Txapakúra", "Xapakúra"},
	scripts = {"Latn"},
	family = "sai-cpc",
}

m["sai-chr"] = {
	canonicalName = "Charrua",
	otherNames = {"Charrúa", "Charruá"},
	scripts = {"Latn"},
	family = "sai-crn",
}

m["sai-chu"] = {
	canonicalName = "Churuya",
	otherNames = {"Churoya"},
	scripts = {"Latn"},
	family = "sai-guh",
}

m["sai-cmg"] = {
	canonicalName = "Comechingon",
	otherNames = {"Comechingón", "Comechingona", "Comechingone"},
	scripts = {"Latn"},
}

m["sai-cnr"] = {
	canonicalName = "Cañari",
	otherNames = {"Cañar"},
	scripts = {"Latn"},
}

m["sai-cnr"] = {
	canonicalName = "Chono",
	otherNames = {"Chonos", "Caucau"},
	scripts = {"Latn"},
}

m["sai-col"] = {
	canonicalName = "Colán",
	otherNames = {"Colan"},
	scripts = {"Latinx"},
	family = "sai-ctc",
}

m["sai-cop"] = {
	canonicalName = "Copallén",
	scripts = {"Latn"},
}

m["sai-crd"] = {
	canonicalName = "Coroado Puri",
	otherNames = {"Coroado"},
	scripts = {"Latn"},
	family = "sai-mje",
}

m["sai-cul"] = {
	canonicalName = "Culli",
	otherNames = {"Culle", "Kulyi", "Ilinga", "Linga"},
	scripts = {"Latn"},
}

m["sai-esm"] = {
	canonicalName = "Esmeralda",
	otherNames = {"Esmeraldeño", "Atacame", "Takame"},
	scripts = {"Latn"},
}

m["sai-ewa"] = {
	canonicalName = "Ewarhuyana",
	scripts = {"Latn"},
}

m["sai-gay"] = {
	canonicalName = "Gayón",
	otherNames = {"Gayon"},
	scripts = {"Latn"},
	family = "sai-jir",
}

m["sai-gmo"] = {
	canonicalName = "Guamo",
	otherNames = {"Wamo", "Santa Rosa", "San Jose", "Barinas", "Guamotey", "Guama"},
	scripts = {"Latn"},
}

m["sai-gue"] = {
	canonicalName = "Güenoa",
	otherNames = {"Guenoa"},
	scripts = {"Latn"},
	family = "sai-crn",
}

m["sai-hau"] = {
	canonicalName = "Haush",
	otherNames = {"Manek'enk"},
	scripts = {"Latn"},
	family = "sai-cho",
}

m["sai-jko"] = {
	canonicalName = "Jeikó",
	otherNames = {"Geicó", "Jeicó", "Jaikó", "Geikó", "Yeikó", "Jeiko", "Geico", "Jeico", "Jaiko", "Geiko", "Yeiko", "Eyco"},
	scripts = {"Latn"},
	family = "sai-mje",
}

m["sai-jrj"] = {
	canonicalName = "Jirajira",
	scripts = {"Latn"},
	family = "sai-jir",
}

m["sai-kat"] = { -- contrast xoo, kzw, sai-xoc
	canonicalName = "Katembri",
	otherNames = {"Catrimbi", "Catembri", "Kariri de Mirandela", "Mirandela", "Kariri", "Kiriri"},
	scripts = {"Latn"},
}

m["sai-mal"] = {
	canonicalName = "Malalí",
	otherNames = {"Malali"},
	scripts = {"Latn"},
}

m["sai-mar"] = {
	canonicalName = "Maratino",
	scripts = {"Latn"},
}

m["sai-mat"] = {
	canonicalName = "Matanawi",
	otherNames = {"Matanauí", "Matanaui", "Matanawü", "Mitandua", "Moutoniway"},
	scripts = {"Latn"},
}

m["sai-men"] = {
	canonicalName = "Menien",
	otherNames = {"Menién"},
	scripts = {"Latn"},
	family = "sai-mje",
}

m["sai-mil"] = {
	canonicalName = "Millcayac",
	otherNames = {"Milykayak", "Huarpe", "Warpe"},
	scripts = {"Latn"},
	family = "sai-hrp",
}

m["sai-msk"] = {
	canonicalName = "Masakará",
	otherNames = {"Masakara", "Masacará", "Masacara"},
	scripts = {"Latn"},
	family = "sai-mje",
}

m["sai-mue"] = {
	canonicalName = "Muellama",
	otherNames = {"Muellamués"},
	scripts = {"Latn"},
	family = "sai-bar",
}

m["sai-muz"] = {
	canonicalName = "Muzo",
	scripts = {"Latn"},
}

m["sai-nat"] = {
	canonicalName = "Natú",
	otherNames = {"Natu", "Peagaxinan"},
	scripts = {"Latn"},
}

m["sai-opo"] = {
	canonicalName = "Opón",
	otherNames = {"Opon", "Opón", "Opón-Karare", "Opón-Carare", "Carare", "Carare-Opón"},
	scripts = {"Latn"},
	family = "sai-car",
}

m["sai-oto"] = {
	canonicalName = "Otomaco",
	otherNames = {"Otomako", "Otomacan", "Otomac", "Otomak"},
	scripts = {"Latn"},
	family = "sai-otm",
}

m["sai-pal"] = {
	canonicalName = "Palta",
	scripts = {"Latn"},
}

m["sai-pam"] = {
	canonicalName = "Pamigua",
	otherNames = {"Pamiwa"},
	scripts = {"Latn"},
	family = "sai-otm",
}

m["sai-par"] = {
	canonicalName = "Paratió",
	otherNames = {"Paratio", "Prarto"},
	scripts = {"Latn"},
}

m["sai-pnz"] = {
	canonicalName = "Panzaleo",
	otherNames = {"Pansaleo"},
	scripts = {"Latn"},
}

m["sai-prh"] = {
	canonicalName = "Puruhá",
	scripts = {"Latn"},
}

m["sai-ptg"] = {
	canonicalName = "Patagón",
	otherNames = {"Patagón de Perico"},
	scripts = {"Latn"},
}

m["sai-pur"] = {
	canonicalName = "Purukotó",
	otherNames = {"Purukoto", "Purucotó", "Purucoto"},
	scripts = {"Latn"},
	family = "sai-car",
}

m["sai-pyg"] = {
	canonicalName = "Payaguá",
	otherNames = {"Payawá", "Payagua"},
	scripts = {"Latn"},
}

m["sai-qmb"] = {
	canonicalName = "Quimbaya",
	otherNames = {"Kimbaya", "Quindío", "Quindio", "Quindo"},
	scripts = {"Latn"},
}

m["sai-qtm"] = {
	canonicalName = "Quitemo",
	otherNames = {"Quitemoca"},
	scripts = {"Latn"},
	family = "sai-cpc",
}

m["sai-rab"] = {
	canonicalName = "Rabona",
	scripts = {"Latn"},
}

m["sai-sac"] = {
	canonicalName = "Sácata",
	otherNames = {"Sacata", "Zácata", "Chillao"},
	scripts = {"Latn"},
}

m["sai-san"] = {
	canonicalName = "Sanaviron",
	otherNames = {"Sanavirón", "Sanabirón", "Sanabiron", "Sanavirona", "Zanavirona"},
	scripts = {"Latn"},
}

m["sai-sap"] = {
	canonicalName = "Sapará",
	otherNames = {"Sapará", "Zapará", "Zapara"},
	scripts = {"Latn"},
	family = "sai-car",
}

m["sai-sec"] = {
	canonicalName = "Sechura",
	otherNames = {"Sek", "Sec"},
	scripts = {"Latn"},
}

m["sai-tab"] = {
	canonicalName = "Tabancale",
	otherNames = {"Aconipa"},
	scripts = {"Latn"},
}

m["sai-tal"] = {
	canonicalName = "Tallán",
	otherNames = {"Atalán", "Tallan", "Tallanca", "Atalan", "Sek"},
	scripts = {"Latn"},
}

m["sai-teu"] = {
	canonicalName = "Teushen",
	otherNames = {"Tehues", "Teuéx"},
	scripts = {"Latn"},
}

m["sai-tpr"] = {
	canonicalName = "Taparita",
	otherNames = {"Taparito"},
	scripts = {"Latn"},
	family = "sai-otm",
}

m["sai-way"] = {
	canonicalName = "Wayumará",
	otherNames = {"Wayumara", "Wajumará", "Wajumara", "Azumara", "Guimara"},
	scripts = {"Latn"},
	family = "sai-car",
}

m["sai-wnm"] = {
	canonicalName = "Wanham",
	otherNames = {"Wañam", "Wanyam", "Huanyam", "Uanham", "Abitana"},
	scripts = {"Latn"},
	family = "sai-cpc",
}

m["sai-xoc"] = { -- contrast xoo, kzw, sai-kat
	canonicalName = "Xocó",
	otherNames = {"Xoco", "Chocó", "Shokó", "Shoko", "Shocó", "Shoco", "Choco", "Chocaz", "Kariri-Xocó", "Kariri-Xoco", "Kariri-Shoko", "Cariri-Chocó", "Xukuru-Kariri", "Xucuru-Kariri", "Xucuru-Cariri", "Xukurú-Kirirí"},
	scripts = {"Latn"},
}

m["sai-yri"] = {
	canonicalName = "Yuri",
	otherNames = {"Jurí"},
	scripts = {"Latn"},
	family = "sai-tyu",
}

m["sai-yup"] = {
	canonicalName = "Yupua",
	otherNames = {"Yupuá", "Yupúa", "Jupua", "Jupuá", "Jupúa", "Hiupiá", "Yupuá-Duriña", "Duriña"},
	scripts = {"Latn"},
	family = "sai-tuc",
}

m["sai-yur"] = {
	canonicalName = "Yurumanguí",
	otherNames = {"Yurumangui", "Yurimangí", "Yurimangi", "Yurimanguí", "Yurimangui"},
	scripts = {"Latn"},
}

m["sal-pro"] = {
	canonicalName = "Proto-Salish",
	otherNames = {"Proto-Salishan"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "sal",
}

m["sem-amm"] = {
	canonicalName = "Ammonite",
	scripts = {"Phnx"},
	family = "sem-can",
}

m["sem-amo"] = {
	canonicalName = "Amorite",
	otherNames = {"Amoritic"},
	family = "sem-nwe",
}

m["sem-dad"] = {
	canonicalName = "Dadanitic",
	otherNames = {"Dadanite", "Dadanitic", "Dadanite", "Lihyanite", "Lihyanitic"},
	family = "sem",
}

m["sem-dum"] = {
	canonicalName = "Dumaitic",
	family = "sem",
}

m["sem-him"] = {
	canonicalName = "Himyaritic",
	otherNames = {"Himyarite", "Himyari", "Himyaric", "Himyar"},
	scripts = {"Arab", "Sarb", "Latn"}, -- last one if we want entries for transliterations
	family = "sem",
}

m["sem-mhr"] = {
	canonicalName = "Muher",
	otherNames = {"Muher Gurage", "Muxar"},
	scripts = {"Latn"},
	family = "sem-eth",
}

m["sem-pro"] = {
	canonicalName = "Proto-Semitic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "sem",
}

m["sem-srb"] = {
	canonicalName = "Old South Arabian",
	scripts = {"Sarb"},
	family = "sem-osa",
}

m["sio-pro"] = { -- this is the proto-lang of Western Sioun only; cf. 'nai-sca-pro'
	canonicalName = "Proto-Siouan",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "sio",
}

m["sit-bok"] = {
	canonicalName = "Bokar",
	otherNames = {"Ramo", "Pailibo"},
	scripts = {"Latn"},
	family = "sit",
}

m["sit-cha"] = {
	canonicalName = "Chairel",
	scripts = {"Latn"},
	family = "sit",
}

m["sit-gkh"] = {
	canonicalName = "Gokhy",
	otherNames = {"Gɔkhý", "Gɔkhy"},
	scripts = {"Latn"},
	family = "sit",
}

m["sit-jap"] = {
	canonicalName = "Japhug",
	otherNames = {"Chabao", "rGyalrong", "Rgyalrong", "Jiarong", "Gyarung", "Kuru"},
	scripts = {"Latn"},
	family = "sit",
}

m["sit-liz"] = {
	canonicalName = "Lizu",
	scripts = {"Latn"}, -- also Ersu Shaba
	family = "sit-qia",
}

m["sit-pro"] = {
	canonicalName = "Proto-Sino-Tibetan",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "sit",
}

m["sit-sit"] = {
	canonicalName = "Situ",
	otherNames = {"Eastern rGyalrong", "rGyalrong", "Rgyalrong", "Jiarong", "Gyarung", "Kuru"},
	scripts = {"Latn"},
	family = "sit",
}

m["sit-tos"] = {
	canonicalName = "Tosu",
	scripts = {"Latn"}, -- also Ersu Shaba
	family = "sit-qia",
}

m["sit-tsh"] = {
	canonicalName = "Tshobdun",
	otherNames = {"Caodeng", "Sidaba", "rGyalrong", "Rgyalrong", "Jiarong", "Gyarung", "Kuru"},
	scripts = {"Latn"},
	family = "sit",
}

m["sit-zbu"] = {
	canonicalName = "Zbu",
	otherNames = {"Ribu", "Rdzong'bur", "Showu", "rGyalrong", "Rgyalrong", "Jiarong", "Gyarung", "Kuru"},
	scripts = {"Latn"},
	family = "sit",
}

m["sla-pro"] = {
	canonicalName = "Proto-Slavic",
	otherNames = {"Common Slavic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "sla",
	entry_name = {
		from = {"[ÀÁÃĀȀȂ]", "[àáãāȁȃ]", "[ÈÉẼĒȄȆ]", "[èéẽēȅȇ]", "[ÌÍĨĪȈȊ]", "[ìíĩīȉȋ]", "[ÒÓÕŌȌȎ]", "[òóõōȍȏ]", "[ÙÚŨŪȔȖ]", "[ùúũūȕȗ]", "[ỲÝỸȲ]", "[ỳýỹȳ]", "[Ǭ]", "[ǭ]", GRAVE, ACUTE, TILDE, MACRON, DGRAVE, INVBREVE},
		to   = {"A", "a", "E", "e", "I", "i", "O", "o", "U", "u", "Y", "y", "Ǫ", "ǫ"}},
}

m["smi-pro"] = {
	canonicalName = "Proto-Samic",
	otherNames = {"Proto-Sami"},
	type = "reconstructed",
	scripts = {"Latn"},
	family = "smi",
}

m["sqj-pro"] = {
	canonicalName = "Proto-Albanian",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "sqj",
}

m["syd-fne"] = {
	canonicalName = "Forest Nenets",
	scripts = {"Cyrl"},
	family = "syd",
}

m["syd-pro"] = {
	canonicalName = "Proto-Samoyedic",
	type = "reconstructed",
	scripts = {"Latn"},
	family = "syd",
}

m["tai-pro"] = {
	canonicalName = "Proto-Tai",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tai",
}

m["tai-swe-pro"] = {
	canonicalName = "Proto-Southwestern Tai",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tai-swe",
}

m["tbq-kuk-pro"] = {
	canonicalName = "Proto-Kuki-Chin",
	otherNames = {"Proto-Kukish"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tbq-kuk",
}

m["tbq-lol-pro"] = {
	canonicalName = "Proto-Loloish",
	otherNames = {"Proto-Nisoic"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tbq",
}

m["tbq-pro"] = {
	canonicalName = "Proto-Tibeto-Burman",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tbq",
}

m["trk-mmk"] = {
	canonicalName = "Mamluk-Kipchak",
	scripts = {"Latn", "Arab"},
	family = "trk-kip",
}

m["trk-oat"] = {
	canonicalName = "Old Anatolian Turkish",
	scripts = {"ota-Arab"},
	family = "trk-ogz",
}

m["trk-ogz-pro"] = {
	canonicalName = "Proto-Oghuz",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "trk-ogz",
}

m["trk-pro"] = {
	canonicalName = "Proto-Turkic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "trk",
}

m["tup-kab"] = {
	canonicalName = "Kabishiana",
	otherNames = {"Kabixiana", "Cabixiana", "Cabishiana", "Kapishana", "Capishana", "Kapišana", "Cabichiana", "Capichana", "Capixana"},
	scripts = {"Latn"},
	family = "tup",
}

m["tut-pro"] = {
	canonicalName = "Proto-Altaic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tut",
}

m["tuw-pro"] = {
	canonicalName = "Proto-Tungusic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "tuw",
}

m["und-isa"] = {
	canonicalName = "Isaurian",
--	scripts = {"Xsux", "Hluw", "Latn"},
--	family = "ine",
}

m["und-kas"] = {
	canonicalName = "Kassite",
	otherNames = {"Cassite", "Kassitic", "Kaššite"},
	scripts = {"Xsux"},
}

m["und-mil"] = {
	canonicalName = "Milang",
	scripts = {"Deva", "Latn"},
}

m["und-mmd"] = {
	canonicalName = "Mimi of Decorse",
	otherNames = {"Mimi of Gaudefroy-Demombynes", "Mimi-D"},
	scripts = {"Latn"},
}

m["und-mmn"] = {
	canonicalName = "Mimi of Nachtigal",
	otherNames = {"Mimi-N"},
	scripts = {"Latn"},
}

m["und-phi"] = {
	canonicalName = "Philistine",
	otherNames = {"Philistian", "Philistinian"},
}

m["urj-pro"] = {
	canonicalName = "Proto-Uralic",
	otherNames = {"Proto-Finno-Ugric", "Proto-Finno-Permic"}, -- PFU and PFP are subsumed into PU per [[Wiktionary:Beer parlour/2015/January#Merging Finno-Volgaic, Finno-Samic, Finno-Permic and Finno-Ugric into Uralic]]
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "urj",
}

m["xnd-pro"] = {
	canonicalName = "Proto-Na-Dene",
	otherNames = {"Proto-Na-Dené", "Proto-Athabaskan–Eyak–Tlingit"},
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "xnd",
}

m["xgn-pro"] = {
	canonicalName = "Proto-Mongolic",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "xgn",
}

m["ypk-pro"] = {
	canonicalName = "Proto-Yupik",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "ypk",
}

m["zhx-min-pro"] = {
	canonicalName = "Proto-Min",
	type = "reconstructed",
	scripts = {"Latinx"},
	family = "zhx",
}

m["zle-ono"] = {
	canonicalName = "Old Novgorodian",
	scripts = {"Cyrs", "Glag"},
	family = "zle",
	translit_module = "Cyrs-Glag-translit",
	sort_key = {
		from = {"оу"},
		to   = {"у" }},
}

m["zlw-ocs"] = {
	canonicalName = "Old Czech",
	scripts = {"Latn"},
	family = "zlw",
}

m["zlw-opl"] = {
	canonicalName = "Old Polish",
	scripts = {"Latn"},
	family = "zlw",
}

m["zlw-pom"] = {
	canonicalName = "Pomeranian",
	family = "zlw",
}

m["zlw-slv"] = {
	canonicalName = "Slovincian",
	scripts = {"Latn"},
	family = "zlw",
	ancestors = {"zlw-pom"},
}

print(json.stringify(m))
return m
--
