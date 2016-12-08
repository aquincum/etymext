module Main  (parseTemplate, Template(..),
			  parsePage, Page(..), Sense(..),
			  Section(..),
			  Etymology(..), Language(..),
			  hasError, getError) where

import Control.Alt ((<|>))
import Data.Either (Either(..))
import Data.Array (many)
import Data.Maybe (Maybe(..), isJust)
import Data.String (fromCharArray)
import Text.Parsing.Parser (ParserT(..), runParserT, parseErrorMessage, ParseError)
import Text.Parsing.Parser.String (string, char, noneOf, anyChar, skipSpaces, satisfy, eof)
import Text.Parsing.Parser.Combinators (sepBy, manyTill, lookAhead)
import Text.Parsing.Parser.Token (letter)
import Prelude (bind, ($), pure, map, (<>), class Show, (==), (*>), (/=), unit, (<<<))
import Data.List (List(..), head, tail, concat)
import Data.List as L
import Control.MonadZero (guard)
import Control.Monad.Trampoline (Trampoline, runTrampoline)
--import Data.Char.Unicode (isAlpha, isAlphaNum, isDigit, isHexDigit, isOctDigit, isSpace, isUpper)

-- for debugs
import Control.Monad.Eff.Console (log)
import Control.Monad.Eff.Unsafe (unsafePerformEff)


-- trampoline parsing

type Parser s a = ParserT s Trampoline a

runParser :: forall s a. s -> Parser s a -> Either ParseError a
runParser s = runTrampoline <<< runParserT s


data Language = English | MiddleEnglish | OldEnglish | UnknownLanguage String

instance showLanguage :: Show Language where
	show l = case l of
		English -> "English"
		MiddleEnglish -> "Middle English"
		OldEnglish -> "Old English"
		UnknownLanguage s -> "Language " <> s

getFullNameLanguage :: String -> Language
getFullNameLanguage "English" = English
getFullNameLanguage "Middle English" = MiddleEnglish
getFullNameLanguage "Old English" = OldEnglish
getFullNameLanguage s = UnknownLanguage s


data Template = Template {
	tag :: String,
	parts :: List String
}

data Etymology = Blend { blend :: List String } |
				 From {
				 	source :: Language,
				 	form :: String,
				 	etymology :: Etymology
				 } |
				 Unknown


data Sense = Sense {
	definition :: String,
	-- comes from the section after the etym!?
	etymology :: Etymology
}

data Section = Section {
	language :: Language,
	senses :: List Sense
}

data Page = Page {
	seeAlso :: List String,
	sections :: List Section,
	parsingError :: Maybe String
}

parseTemplate :: String -> Template
parseTemplate s = case runParser s template of
	Left e -> Template {tag: "error-tag", parts: Nil}
	Right t -> t



template :: Parser String Template
template = do
	string "{{"
	contents <- sepBy (many $ noneOf ['|', '}']) (char '|')
	string "}}"
	let tag' = case head contents of
		Nothing -> "no-tag"
		Just x -> fromCharArray x
	let parts' = case tail contents of
		Nothing -> Nil
		Just xs -> map fromCharArray xs
	pure $ Template {tag: tag', parts: parts'}

hasTag :: String -> Template -> Boolean
hasTag s (Template t) = t.tag == s

getParts :: Template -> List String
getParts (Template t) = t.parts


getAlsos :: List Template -> List String
getAlsos ts = concat $ do
	t <- ts
	guard $ hasTag "also" t
	pure $ getParts t


--let alsots = filter (hasTag "also") ts

subsection :: Parser String (Maybe Sense)
subsection = do
	let y = unsafePerformEff $ log "beg"
	string "==="
	let y2 = unsafePerformEff $ log "mid2"
	title <- many $ noneOf ['=']
	let y3 = unsafePerformEff $ log ("mid3, section " <> (fromCharArray title))
	string "==="
	let y4 = unsafePerformEff $ log "mid4"
	--dat <- manyTill anyChar (eof <|> (lookAhead ( string "===" *> satisfy (\c -> c /= '=') *> pure unit)))
	--eof <|> (char '\n' *> pure unit)
	dat <- many anyChar
	let y5 = unsafePerformEff $ log "mid5"
	pure Nothing


section :: Parser String Section
section = do
	string "=="
	langName <- many $ noneOf ['=']
	string "=="
	skipSpaces
	let y = unsafePerformEff $ log ("Doing " <> (fromCharArray langName))
	senses'<- L.many subsection
	let x = unsafePerformEff $ log "asdiasdhasid"
	let lang = getFullNameLanguage $ fromCharArray langName
	let senses'' = L.catMaybes senses'
	pure $ Section {language: lang, senses: senses''}



page :: Parser String Page
page = do
	initTemplates <- L.many template
	let alsos = getAlsos initTemplates
	skipSpaces
	sections <- L.many section
	pure $ Page {seeAlso: alsos, sections: sections, parsingError: Nothing}


{-page :: Parser String Page
page = do
	dt <- manyTill anyChar eof
	let z = unsafePerformEff $ log "UFF"
	pure $ Page {seeAlso: Nil, sections: Nil, parsingError: Just "upsz"}
-}

parsePage :: String -> Page
parsePage s = case runParser s page of
	Left e -> Page {seeAlso: Nil, sections: Nil, parsingError: Just ("Error: " <> parseErrorMessage e)}
	Right p -> p

hasError :: Page -> Boolean
hasError (Page p) = isJust p.parsingError

getError :: Page -> String
getError (Page p) = case p.parsingError of
	Nothing -> ""
	Just e -> e


language :: Parser String Language
language = do
	codeArr <- many letter
	let code = fromCharArray codeArr
	let res = case code of
			"en" -> English
			_ -> UnknownLanguage code
	pure res

parseLanguage :: String -> Language
parseLanguage s = case runParser s language of
	Left _ -> UnknownLanguage "parsing error"
	Right l -> l

