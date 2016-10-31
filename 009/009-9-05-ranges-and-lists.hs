-- mimic the behavior of [start .. stop] on the following types

eftBool :: Bool -> Bool -> [Bool]
eftBool False True = [False, True]
eftBool _ _ = []

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd LT GT = [LT, EQ, GT]
eftOrd LT EQ = [LT, EQ]
eftOrd EQ GT = [EQ, GT]
eftOrd _ _ = []

eftInt :: Int -> Int -> [Int]
eftInt x y
  | x > y = []
  | x == y = [x]
  | x < y = x : eftInt (succ x) y

eftChar :: Char -> Char -> [Char]
eftChar x y
  | x > y  = []
  | x == y = [x]
  | succ x == (maxBound :: Char) = [x, maxBound :: Char]
  | x < y  = x : eftChar (succ x) y

-- ordering in eftChar is very important. We want to prevent calling succ x when
-- we reach the end of the Char set. When succ x would result in the largest
-- Char, we've reached one of three base cases. Computing the return values at
-- this point is trivial.
