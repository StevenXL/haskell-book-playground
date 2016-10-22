{-# LANGUAGE NoMonomorphismRestriction #-}

module Arith4 where
-- id :: a -> a
-- id x = x

-- read "knows" what type to return because the type of the output must be the
-- same as the type of the input
roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

-- point-free version, also uses function composition but that's unnecessary
roundTrip' :: (Show a, Read a) => a -> a
roundTrip' = read . show


-- how do we indicate to read what type to return, if the type signature doesn't
-- provide that information?
roundTrip'' :: (Show a, Read b) => a -> b
roundTrip'' = undefined


main :: IO ()
main = do
  print (roundTrip 4)
  print (id 4)
