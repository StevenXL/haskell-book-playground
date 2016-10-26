{-# LANGUAGE NoMonomorphismRestriction #-}

-- using guards
myFactorial :: Integer -> Integer
myFactorial n
  | n == 0 = 1
  | n > 0 = n * myFactorial (n - 1)

-- using pattern matching
myFactorial' :: Integer -> Integer
myFactorial' 0 = 1
myFactorial' n = n * myFactorial' (n - 1)

-- using if.then..else
myFactorial'' :: Integer -> Integer
myFactorial'' n = if n == 0 then 1 else n * myFactorial'' (n - 1)

-- inc
inc :: Integer -> Integer
-- remember that the + operator is commutative, so we can use (+1) or (1+),
-- which all means the same thing
inc = (1+)

three :: Integer
three = inc . inc . inc $ 0

three' :: Integer
three' = (inc . inc . inc) 0

-- we've hardcoded the number of times we apply inc in three and three'. We
-- can create a general function out of this pattern
incTimes' :: Int -> Int
incTimes' 0 = 0
incTimes' n = 1 + incTimes' (n - 1)

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f (applyTimes (n - 1) f b)

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes times a = applyTimes times (+1) a
