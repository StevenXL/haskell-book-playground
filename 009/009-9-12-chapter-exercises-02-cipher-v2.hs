-- this version of the code behaves according to the book:
-- encodeMsg "z" 3 == "c"
module Cipher where

import Data.Char

encodeMsg :: String -> Int -> String
encodeMsg msg shift = [encodeChr x shift | x <- msg]

encodeChr :: Char -> Int -> Char
encodeChr letter shift
  | letter `elem` ['a'..'z'] = chr $ normalizedShift letter shift (ord 'a')
  | letter `elem` ['A'..'Z'] = chr $ normalizedShift letter shift (ord 'A')
  | otherwise = letter


normalizedShift :: Char -> Int -> Int -> Int
normalizedShift letter shift asciiBase = asciiBase + rem (ord letter - asciiBase + shift) 26
