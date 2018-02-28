{-
  An example 'Hello World' program written in Haskell.
-}

-- Imports.
import System.IO

type FilePath = String
getDirectoryContents :: FilePath -> IO [FilePath]
