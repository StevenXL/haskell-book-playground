module TupleFunctions where

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = fst tup + snd tup

fst3 :: (a, b, c) -> a
fst3 (a, _, _) = a

third3 :: (a, b, c) -> c
third3 (_, _, z) = z
