module Lib
    ( someFunc
    ) where

import           System.Environment (lookupEnv)

someFunc :: IO ()
someFunc = do
    testValue <- lookupEnv "TEST_VALUE"
    putStrLn (showResult testValue)

showResult :: Maybe String -> String
showResult maybeValue = case maybeValue of
    Just value -> "TEST_VALUE" ++ ": " ++ value
    _          -> "TEST_VALUE could not found!"

