{-
  An example 'Hello World' program written in Haskell.
  NOTES: 
    Four spaces, not tabs.
    'module Main where' always goes first, even before imports.
-}
module Main where

import Data.Char
import System.Directory
import System.IO

main :: IO()
main = do
    let fileName = "users.txt"
        fileName2 = "passwords.txt"

    fileExist <- doesFileExist fileName2
    if not fileExist
    then writeFile fileName2 "root\n"
    else return()

    fileExist <- doesFileExist fileName
    if not fileExist
    then writeFile fileName "root\n"
    else return()

    --withFile fileName ReadMode (\handle -> do
    --    contents <- hGetContents handle
    --    putStr contents)

    putStrLn "Hello!"
    putStrLn "Firstname: "
    firstName <- getLine
    putStrLn "Password: "
    passWord <- getLine
    let bigFirstName = map toUpper firstName
        bigPassWord = map toUpper passWord
    appendFile fileName $ bigFirstName ++ "\n"
    appendFile fileName2 $ passWord ++ "\n"
    putStrLn $ " Welcome: " ++ bigFirstName ++ ". How are you today?"
