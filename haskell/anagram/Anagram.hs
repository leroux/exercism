module Anagram (anagramsFor) where

import Data.Char (toLower)
import Data.Map (Map, fromListWith)

freqList :: String -> Map Char Int
freqList = fromListWith (+) . map singleOccur . normalizeWord
  where singleOccur x = (x, 1)
        normalizeWord = map toLower

isAnagramOf :: String -> String -> Bool
isAnagramOf xs ys = freqList xs == freqList ys

anagramsFor :: String -> [String] -> [String]
anagramsFor s = filter (`isAnagramOf` s)
