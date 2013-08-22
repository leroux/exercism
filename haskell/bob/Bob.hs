module Bob where

import Data.Char (isSpace, isLower)

responseFor :: String -> String
responseFor s
  | isSilence s  = "Fine. Be that way."
  | isYelling s  = "Woah, chill out!"
  | isQuestion s = "Sure."
  | otherwise    = "Whatever."
  where isSilence = all isSpace
        isYelling = not . any isLower
        isQuestion = (== '?') . last
