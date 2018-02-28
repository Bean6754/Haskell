{-
  An example 'Hello World' program written in Haskell.
  NOTES: 
    Four spaces, not tabs.
    'module Main where' always goes first, even before imports.
-}
module Main where

import Data.Char
import System.IO

main = do
    putStrLn "Hello!"
    putStrLn "What is your firstname?"
    firstName <- getLine
    putStrLn "What is your surname?"
    surName <- getLine
    let bigFirstName = map toUpper firstName
        bigSurName = map toUpper surName
    putStrLn $ " Welcome: " ++ bigFirstName ++ " " ++ bigSurName ++ ". How are you today?"
