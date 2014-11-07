-- | Main entry point to the application.
module Main where

import qualified Data.ByteString.Lazy as B
import Data.Binary.Get
import Data.Word

deserializeHeader :: Get (Word8)
deserializeHeader = do
    a <- getWord8
    return (a)




-- | The main entry point.
main :: IO ()
main = do
    terContent <- B.readFile "TestData.ter"
    print $ runGet deserializeHeader terContent
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"
