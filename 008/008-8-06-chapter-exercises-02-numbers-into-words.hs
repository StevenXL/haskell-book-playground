module WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord n = intercalate "-" (map wordNumber (digits n))

-- note: the implementation of digits is not mine
digits :: Int -> [Int]
digits 0 = []
digits n = digits (n `div` 10) ++ [n `mod` 10]

wordNumber :: Int -> String
wordNumber n
  | n == 0 = "zero"
  | n == 1 = "one"
  | n == 2 = "two"
  | n == 3 = "three"
  | n == 4 = "four"
  | n == 5 = "five"
  | n == 6 = "six"
  | n == 7 = "seven"
  | n == 8 = "eight"
  | n == 9 = "nine"
