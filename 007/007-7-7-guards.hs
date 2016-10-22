{-# LANGUAGE NoMonomorphismRestriction #-}

-- A few examples showing vanilla guards.

-- using if..then..else
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else negate x

-- Notice how the guards come before the definition
myAbs' :: Integer -> Integer
myAbs' x
  | x >= 0 = x
  | otherwise = negate x

-- Sodium Levels
data SodiumLevel = SodiumLevel Integer

bloodNa :: SodiumLevel -> String
bloodNa (SodiumLevel lvl)
  | lvl < 135 = "Too Low"
  | lvl > 145 = "Too High"
  | otherwise = "Just Right"

-- Right Triangle
isRight :: (Num a, Eq a) => a -> a -> a -> String
isRight a b c
  | a^2 + b^2 == c^2 = "Right Triangle"
  | otherwise = "Not a Right Triangle"

-- DogYrs
dogYrs :: Integer -> Integer
dogYrs x
  | x <= 0    = 0
  | x <= 1    = x * 15
  | x <= 2    = x * 12
  | x <= 4    = x * 8
  | otherwise = x * 6

-- A few examples showing the use of where clauses in guards
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9 = 'A'
  | y >= 0.8 = 'B'
  | y >= 0.7 = 'C'
  | y >= 0.6 = 'D'
  | otherwise = 'F'
  where y = x / 100

pal xs
  | xs == reverse xs = True
  | otherwise = False

numbers x
  | x <   0 = -1
  | x ==  0 = 0
  | x >   0 = 1
