module Main  (parseTemplate, Template(..)) where

import Control.Alt ((<|>))
import Data.Either (Either(..))
import Data.Array (many)
import Data.Maybe (Maybe(..))
import Data.String (fromCharArray)
import Text.Parsing.Parser (Parser, runParser)
import Text.Parsing.Parser.String (string, char, noneOf)
import Text.Parsing.Parser.Combinators (sepBy)
import Prelude ((>>=), bind, ($), pure, map)
import Data.List (List(..), head, tail)

data Template = Template {
	tag :: String,
	parts :: List String
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






digit :: Parser String Int
digit = (string "0" >>= \_ -> pure 0)
        <|> (string "1" >>= \_ -> pure 1)
        <|> (string "2" >>= \_ -> pure 2)
        <|> (string "3" >>= \_ -> pure 3)
        <|> (string "4" >>= \_ -> pure 4)
        <|> (string "5" >>= \_ -> pure 5)
        <|> (string "6" >>= \_ -> pure 6)
        <|> (string "7" >>= \_ -> pure 7)
        <|> (string "8" >>= \_ -> pure 8)
        <|> (string "9" >>= \_ -> pure 9)

