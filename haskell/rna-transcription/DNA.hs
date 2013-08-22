module DNA where

toRNA :: String -> String
toRNA = map thymineToUracil
  where thymineToUracil 'T' = 'U'
        thymineToUracil x = x
