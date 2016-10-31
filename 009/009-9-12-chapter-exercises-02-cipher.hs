module Cipher where

import Data.Char

encodeMsg :: String -> Int -> String
encodeMsg msg shift = [encodeChr x shift | x <- msg]

encodeChr :: Char -> Int -> Char
encodeChr letter shift = chr $ normalizedShift shiftedOrd
                         where shiftedOrd = ord letter + shift

normalizedShift :: Int -> Int
normalizedShift shift
  | shift > ord 'z' = ord 'A' + mod shift (ord 'z')
  | otherwise = shift
