module WordCount (wordCount) where

import Data.Char (isAlphaNum, toLower)
import Data.Map (Map, fromListWith)

freqList :: (Ord k) => [k] -> Map k Int
freqList = fromListWith (+) . map (\x -> (x, 1))

wordCount :: String -> Map String Int
wordCount = freqList . removeEmptyWords . map normalizeWord . words
  where normalizeWord = map toLower . filter isAlphaNum
        removeEmptyWords = filter $ not . null
