module Main  (parseTemplate, Template(..),
			  parsePage, Page(..), Sense(..),
			  Etymology(..), Language(..)) where

--import Control.Alt ((<|>))
import Data.Either (Either(..))
import Data.Array (many)
import Data.Maybe (Maybe(..), isNothing)
import Data.String (fromCharArray)
import Text.Parsing.Parser (Parser, runParser, parseErrorMessage)
import Text.Parsing.Parser.String (string, char, noneOf)
import Text.Parsing.Parser.Combinators (sepBy)
import Text.Parsing.Parser.Token (letter)
import Prelude (bind, ($), pure, map, (<>), class Show)
import Data.List (List(..), head, tail)
--import Data.Char.Unicode (isAlpha, isAlphaNum, isDigit, isHexDigit, isOctDigit, isSpace, isUpper)

data Language = English | MiddleEnglish | OldEnglish | UnknownLanguage String

instance showLanguage :: Show Language where
	show l = case l of
		English -> "English"
		MiddleEnglish -> "Middle English"
		OldEnglish -> "Old English"
		UnknownLanguage s -> "Language " <> s


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

data Page = Page {
	seeAlso :: List String,
	senses :: List Sense,
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


page :: Parser String Page
page = do
	many $ noneOf ['-']
	pure $ Page {seeAlso: Nil, senses: Nil, parsingError: Nothing}


parsePage :: String -> Page
parsePage s = case runParser s page of
	Left e -> Page {seeAlso: Nil, senses: Nil, parsingError: Just ("Error: " <> parseErrorMessage e)}
	Right p -> p

hasError :: Page -> Boolean
hasError (Page p) = isNothing p.parsingError

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

