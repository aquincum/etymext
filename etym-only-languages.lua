local json = require 'json'

local m = {}


-- Aramaic varieties

m["sem-jar"] = {
	canonicalName = "Jewish Aramaic",
	parent = "arc",
}

m["tmr"] = {
	canonicalName = "Jewish Babylonian Aramaic",
	parent = "arc",
}

m["jpa"] = {
	canonicalName = "Jewish Palestinian Aramaic",
	otherNames = {"Galilean Aramaic"},
	parent = "arc",
}


-- German varieties

m["de-AT"] = {
	canonicalName = "Austrian German",
	parent = "de",
}
m["Austrian German"] = m["de-AT"]
m["AG."] = m["de-AT"]

m["de-AT-vie"] = {
	canonicalName = "Viennese German",
	parent = "de-AT",
}
m["Viennese German"] = m["de-AT-vie"]
m["VG."] = m["de-AT-vie"]

m["ksh"] = {
	canonicalName = "Kölsch",
	parent = "gmw-cfr",
}
m["Kölsch"] = m["ksh"]

m["pfl"] = {
	canonicalName = "Palatine German",
	otherNames = {"Pfälzisch", "Pälzisch", "Palatinate German"},
	parent = "gmw-rfr",
}

-- Old High German varieties

m["lng"] = {
	canonicalName = "Lombardic",
	parent = "goh",
}
m["Lombardic"] = m["lng"]
m["goh-lng"] = m["lng"]

-- Old English varieties

m["ang-mer"] = {
	canonicalName = "Mercian Old English",
	parent = "ang",
}

m["ang-nor"] = {
	canonicalName = "Northumbrian Old English",
	parent = "ang",
}

-- English varieties

m["en-GB"] = {
	canonicalName = "British English",
	parent = "en",
}
m["British English"] = m["en-GB"]
m["BE."] = m["en-GB"]

m["en-US"] = {
	canonicalName = "American English",
	parent = "en",
}
m["American English"] = m["en-US"]
m["AE."] = m["en-US"]


-- French varieties

m["fro-nor"] = {
	canonicalName = "Old Northern French",
	otherNames = {"Old Norman", "Old Norman French"},
	parent = "fro",
}
m["Old Northern French"] = m["fro-nor"]
m["ONF."] = m["fro-nor"]

m["fro-pic"] = {
	canonicalName = "Old Picard",
	parent = "fro",
}

m["xno"] = {
	canonicalName = "Anglo-Norman",
	parent = "fro",
	wikipedia_article = "Anglo-Norman language",
}

m["fr-CA"] = {
	canonicalName = "Canadian French",
	parent = "fr",
}
m["Canadian French"] = m["fr-CA"]
m["CF."] = m["fr-CA"]

m["fr-aca"] = {
	canonicalName = "Acadian French",
	parent = "fr",
}
m["Acadian French"] = m["fr-aca"]
m["fra-aca"] = m["fr-aca"]

m["frc"] = {
	canonicalName = "Cajun French",
	otherNames = {"Louisiana French"},
	parent = "fr",
}

-- Norman varieties

m["roa-grn"] = {
	canonicalName = "Guernésiais",
	parent = "nrf",
}

m["roa-jer"] = {
	canonicalName = "Jèrriais",
	parent = "nrf",
}


-- Italian varieties

m["roa-oit"] = {
	canonicalName = "Old Italian",
	parent = "it",
}


-- Latin varieties by period

m["la-lat"] = {
	canonicalName = "Late Latin",
	parent = "la",
}
m["Late Latin"] = m["la-lat"]
m["LL."] = m["la-lat"]
m["LL"] = m["la-lat"]

m["la-vul"] = {
	canonicalName = "Vulgar Latin",
	parent = "la",
}
m["Vulgar Latin"] = m["la-vul"]
m["VL."] = m["la-vul"]

m["la-med"] = {
	canonicalName = "Medieval Latin",
	parent = "la",
}
m["Medieval Latin"] = m["la-med"]
m["ML."] = m["la-med"]
m["ML"] = m["la-med"]

m["la-ecc"] = {
	canonicalName = "Ecclesiastical Latin",
	otherNames = {"Church Latin"},
	parent = "la",
}
m["Ecclesiastical Latin"] = m["la-ecc"]
m["EL."] = m["la-ecc"]

m["la-ren"] = {
	canonicalName = "Renaissance Latin",
	parent = "la",
}
m["Renaissance Latin"] = m["la-ren"]
m["RL."] = m["la-ren"]

m["la-new"] = {
	canonicalName = "New Latin",
	otherNames = {"Modern Latin"},
	parent = "la",
}
m["New Latin"] = m["la-new"]
m["NL."] = m["la-new"]

-- Gaulish

m["xcg"] = {
	canonicalName = "Cisalpine Gaulish",
	parent = "cel-gau",
}

m["xtg"] = {
	canonicalName = "Transalpine Gaulish",
	parent = "cel-gau",
}


-- Greek varieties

m["qfa-sub-grc"] = {
	canonicalName = "Pre-Greek",
	parent = "qfa-sub",
	wikipedia_article = "Pre-Greek substrate",
}
m["pregrc"] = m["qfa-sub-grc"]

m["grc-koi"] = {
	canonicalName = "Koine Greek",
	parent = "grc",
}
m["Koine"] = m["grc-koi"]

m["gkm"] = {
    canonicalName = "Byzantine Greek",
	otherNames = {"Medieval Greek"},
	parent = "grc",
}
m["Medieval Greek"] = m["gkm"]

m["el-GR"] = {
	canonicalName = "Modern Greek",
	parent = "el",
}
m["ell"] = m["el-GR"]

m["grc-dor"] = {
	canonicalName = "Doric Greek",
	parent = "grc",
}

m["grc-att"] = {
	canonicalName = "Attic Greek",
	parent = "grc",
}

m["grc-ion"] = {
	canonicalName = "Ionic Greek",
	parent = "grc",
}

m["grc-pam"] = {
	canonicalName = "Pamphylian Greek",
	parent = "grc",
}

m["grc-arp"] = {
	canonicalName = "Arcadocypriot Greek",
	parent = "grc",
}

m["el-arc"] = {
	canonicalName = "Arcadian Greek",
	parent = "el",
}

m["el-cyp"] = {
	canonicalName = "Cypriotic Greek",
	parent = "el",
}

m["el-pap"] = {
	canonicalName = "Paphian Greek",
	parent = "el",
}

m["grc-aeo"] = {
	canonicalName = "Aeolic Greek",
	otherNames = {"Lesbic Greek", "Lesbian Greek", "Aeolian Greek"},
	parent = "grc",
}

m["el-grk"] = {
	canonicalName = "Griko",
	otherNames = {"Grico"}, -- NB, related Calabrian Greek has 'full' (M:languages/datax) exceptional code 'grk-cal'
	parent = "el",
}

m["loc-ozo"] = {
	canonicalName = "Ozolian Locrian",
	parent = "el",
}

m["loc-opu"] = {
	canonicalName = "Opuntian Locrian",
	parent = "el",
}

m["el-ths"] = {
	canonicalName = "Thessalian Greek",
	parent = "el",
}

m["grc-ela"] = {
	canonicalName = "Elean Greek",
	parent = "grc",
}

m["grc-epc"] = {
	canonicalName = "Epic Greek",
	parent = "grc",
}

m["grc-hmr"] = {
	canonicalName = "Homeric Greek",
	parent = "grc",
}

m["el-crt"] = {
	canonicalName = "Cretan Greek",
	parent = "el",
}


-- Hebrew varieties

m["hbo"] = {
	canonicalName = "Biblical Hebrew",
	otherNames = {"Classical Hebrew"},
	parent = "he",
}

m["he-IL"] = {
	canonicalName = "Modern Israeli Hebrew",
	parent = "he",
}

m["sem-can-pro"] = {
	canonicalName = "Proto-Canaanite",
	parent = "sem-pro",
}

-- Historical Iranian dialects

m["ira-mid"] = {
	canonicalName = "Middle Iranian",
	parent = "ira",
}
m["MIr."] = m["ira-mid"]

m["ira-old"] = {
	canonicalName = "Old Iranian",
	parent = "ira",
}
m["OIr."] = m["ira-old"]

m["fa-cls"] = {
	canonicalName = "Classical Persian",
	parent = "fa",
}

m["sog-bud"] = {
	canonicalName = "Buddhist Sogdian",
	parent = "sog",
}

m["sog-man"] = {
	canonicalName = "Manichean Sogdian",
	parent = "sog",
}
m["sog-chr"] = {
	canonicalName = "Christian Sogdian",
	parent = "sog",
}

-- Indo-Aryan varieties

m["gu-kat"] = {
	canonicalName = "Kathiyawadi",
	otherNames = {"Kathiyawadi Gujarati", "Kathiawadi"},
	parent = "gu",
}

m["gu-mid"] = {
	canonicalName = "Middle Gujarati",
	parent = "gu",
}

m["hi-old"] = {
	canonicalName = "Old Hindi",
	parent = "hi",
}

m["hi-mum"] = {
	canonicalName = "Bombay Hindi",
	otherNames = {"Mumbai Hindi", "Bambai Hindi"},
	parent = "hi",
}

m["pa-old"] = {
	canonicalName = "Old Punjabi",
	parent = "pa",
}

m["bn-old"] = {
	canonicalName = "Old Bengali",
	parent = "bn",
}

m["bn-mid"] = {
	canonicalName = "Middle Bengali",
	parent = "bn",
}

m["or-old"] = {
	canonicalName = "Old Oriya",
	parent = "or",
}

m["or-mid"] = {
	canonicalName = "Middle Oriya",
	parent = "or",
}

m["si-med"] = {
	canonicalName = "Medieval Sinhalese",
	otherNames = {"Medieval Sinhala"},
	parent = "si",
}

m["kok-mid"] = {
	canonicalName = "Middle Konkani",
	otherNames = {"Medieval Konkani"},
	parent = "kok",
}

m["kok-old"] = {
	canonicalName = "Old Konkani",
	otherNames = {"Early Konkani"},
	parent = "kok",
}

-- Dravidian varieties

m["kn-old"] = {
	canonicalName = "Old Kannada",
	parent = "kn",
}

m["kn-mid"] = {
	canonicalName = "Middle Kannada",
	parent = "kn",
}

m["ta-mid"] = {
	canonicalName = "Middle Tamil",
	parent = "ta",
}


-- Dhivehi varieties

m["mlk-dv"] = {
	canonicalName = "Mulaku Dhivehi",
	otherNames = {"Mulaku Divehi", "Mulaku Bas"},
	parent = "dv",
}

m["hvd-dv"] = {
	canonicalName = "Huvadhu Dhivehi",
	otherNames = {"Huvadhu Divehi", "Huvadhu Bas"},
	parent = "dv",
}

m["add-dv"] = {
	canonicalName = "Addu Dhivehi",
	otherNames = {"Addu Divehi", "Addu Bas"},
	parent = "dv",
}

-- Prakrits

m["psc-prk"] = {
	canonicalName = "Paisaci",
	otherNames = {"Paisaci Prakrit"},
	parent = "sa",
}

m["prk-avt"] = {
	canonicalName = "Avanti",
	otherNames = {"Avanti Prakrit"},
	parent = "sa",
}

m["elu-prk"] = {
	canonicalName = "Helu",
	otherNames = {"Hela", "Elu Prakrit", "Helu Prakrit", "Hela Prakrit"},
	parent = "sa",
}

m["prc-prk"] = {
	canonicalName = "Pracya",
	otherNames = {"Pracya Prakrit"},
	parent = "sa",
}

m["bhl-prk"] = {
	canonicalName = "Bahliki",
	otherNames = {"Bahliki Prakrit"},
	parent = "sa",
}

m["dks-prk"] = {
	canonicalName = "Daksinatya",
	otherNames = {"Daksinatya Prakrit"},
	parent = "sa",
}

m["skr-prk"] = {
	canonicalName = "Sakari",
	otherNames = {"Sakari Prakrit"},
	parent = "sa",
}

m["cnd-prk"] = {
	canonicalName = "Candali",
	otherNames = {"Candali Prakrit"},
	parent = "sa",
}

m["sbr-prk"] = {
	canonicalName = "Sabari",
	otherNames = {"Sabari Prakrit"},
	parent = "sa",
}

m["abh-prk"] = {
	canonicalName = "Abhiri",
	otherNames = {"Abhiri Prakrit"},
	parent = "sa",
}

m["drm-prk"] = {
	canonicalName = "Dramili",
	otherNames = {"Dramili Prakrit"},
	parent = "sa",
}

m["odr-prk"] = {
	canonicalName = "Odri",
	otherNames = {"Odri Prakrit"},
	parent = "sa",
}

-- Scots varieties

m["sco-osc"] = {
	canonicalName = "Early Scots",
	parent = "sco",
}
m["Early Scots"] = m["sco-osc"]
m["Old Scots"] = m["sco-osc"]
m["O.Sc."] = m["sco-osc"]

m["sco-smi"] = {
	canonicalName = "Middle Scots",
	parent = "sco",
}
m["Middle Scots"] = m["sco-smi"]
m["Mid.Sc."] = m["sco-smi"]

m["sco-ins"] = {
	canonicalName = "Insular Scots",
	parent = "sco",
}
m["Insular Scots"] = m["sco-ins"]
m["Ins.Sc."] = m["sco-ins"]

m["sco-uls"] = {
	canonicalName = "Ulster Scots",
	parent = "sco",
}
m["Ulster Scots"] = m["sco-uls"]
m["Uls.Sc."] = m["sco-uls"]

m["sco-nor"] = {
	canonicalName = "Northern Scots",
	parent = "sco",
}
m["Northern Scots"] = m["sco-nor"]
m["Nor.Sc."] = m["sco-nor"]

m["sco-sou"] = {
	canonicalName = "Southern Scots",
	parent = "sco",
}
m["Southern Scots"] = m["sco-sou"]
m["Borders Scots"] = m["sco-sou"]
m["Sou.Sc."] = m["sco-sou"]


-- Chinese varieties

m["wuu-sha"] = {
	canonicalName = "Shanghainese",
	parent = "wuu",
}
m["Sha."] = m["wuu-sha"]

m["yue-tai"] = {
	canonicalName = "Taishanese",
	parent = "yue",
}

m["hak-wuh"] = {
	canonicalName = "Wuhua Chinese",
	parent = "hak",
}

m["hsn-old"] = {
	canonicalName = "Old Xiang",
	otherNames = {"Lou-Shao"},
	parent = "hsn",
}

m["pinhua"] = {
	canonicalName = "Pinghua",
	parent = "yue",
}

m["nan-hai"] = {
	canonicalName = "Hainanese",
	parent = "nan",
}

m["nan-hok"] = {
	canonicalName = "Hokkien",
	parent = "nan",
}

m["nan-amo"] = {
	canonicalName = "Amoy",
	otherNames = {"Xiamenese"},
	parent = "nan-hok",
}

m["nan-phl"] = {
	canonicalName = "Philippine Hokkien",
	parent = "nan-hok",
}

m["nan-teo"] = {
	canonicalName = "Teochew",
	parent = "nan",
}

-- Phillipine varieties

m["tl-old"] = {
	canonicalName = "Old Tagalog",
	parent = "tl",
}

m["tl-cls"] = {
	canonicalName = "Classical Tagalog",
	parent = "tl",
}

-- Turkic lects

m["trk-cmn"] = {
	canonicalName = "Common Turkic",
	parent = "trk-pro",
}

m["otk-kir"] = {
	canonicalName = "Old Kirghiz",
	parent = "otk",
}

-- Mongolic lects

m["mn-kha"] = {
	canonicalName = "Khalkha Mongolian",
	parent = "mn",
}

m["mn-ord"] = {
	canonicalName = "Ordos Mongolian",
	parent = "mn",
}

m["mn-cha"] = {
	canonicalName = "Chakhar Mongolian",
	parent = "mn",
}

m["mn-khr"] = {
	canonicalName = "Khorchin Mongolian",
	parent = "mn",
}

m["bua-xmn"] = {
	canonicalName = "Khamnigan Mongol",
	parent = "bua",
}

-- Tungusic lects

m["evn-sol"] = {
	canonicalName = "Solon",
	parent = "evn",
}

-- Other lects

m["alv-kro"] = {
	canonicalName = "Kromanti",
	parent = "crp",
}

m["bat-pro"] = {
	canonicalName = "Proto-Baltic",
	parent = "ine-bsl-pro",
}

m["es-lun"] = {
	canonicalName = "Lunfardo",
	parent = "es",
}
m["Lunfardo"] = m["es-lun"]

m["fiu-fpr-pro"] = {
	canonicalName = "Proto-Finno-Permic",
	parent = "urj-pro",
}

m["fiu-pro"] = {
	canonicalName = "Proto-Finno-Ugric",
	parent = "urj-pro",
}

m["gem-sue"] = {
	canonicalName = "Suevic",
	otherNames = {"Suebian"},
	parent = "gmw",
}

m["mkh-okm-A"] = {
	canonicalName = "Angkorian Old Khmer",
	parent = "mkh-okm",
	wikipedia_article = "Khmer language#Historical periods",
}

m["mkh-okm-P"] = {
	canonicalName = "Pre-Angkorian Old Khmer",
	parent = "mkh-okm",
	wikipedia_article = "Khmer language#Historical periods",
}

m["prv"] = {
	canonicalName = "Provençal",
	parent = "oc",
	wikipedia_article = "Provençal dialect",
}

m["und-tdl"] = {
	canonicalName = "Turduli",
	parent = "und",
	wikipedia_article = "Turduli",
}

m["und-tdt"] = {
	canonicalName = "Turdetani",
	parent = "und",
	wikipedia_article = "Turdetani",
}

-- Pre-Roman substrates

m["qfa-sub-ibe"] = {
	canonicalName = "a pre-Roman substrate of Iberia",
	parent = "qfa-sub",
	wikipedia_article = "Pre-Roman peoples of the Iberian Peninsula",
}

m["qfa-sub-bal"] = {
	canonicalName = "a pre-Roman substrate of the Balkans",
	parent = "qfa-sub",
}

-- Translingual varieties

m["mul-tax"] = {
	canonicalName = "taxonomic name",
	parent= "mul",
}
m["Tax."] = m["mul-tax"]

print(json.stringify(m))
return m
