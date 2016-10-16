-- 1)

-- type signature of general function:
-- (++) :: [a] -> [a] -> [a]

myConcat x = x ++ " yo"

-- The type of myConcat has to be:
-- myConcat :: [Char] -> [Char]
-- because the type of (++) indicates that it takes two lists of the same type.
-- One argument (" yo") is already of type [Char], so given the above, the
-- second argument must be of type [Char] as well.

-- 2) General function:
-- (*) :: Num a => a -> a -> a

myMult x = (x / 3) * 5

-- The type of myMult has to be:
-- myConcat :: Fractional a => a -> a
-- because the arguments to (/) must be instances of Fractional, and the
-- arguments to (*) must be of the same concrete type.
-- Because x must be Fractional, and the result will be Fractional, the 5 will
-- resolve to the concrete type Fractional

-- 3) General function:
-- (take) :: Int -> [a] -> [a]

myTake x = take x "hey you"

-- The type of myTake has to be:
-- myTake :: Int -> [Char]
-- because the first argument to take must be an Int, and we are taking from a
-- String / [Char], and take will return the same type of list.

-- 4) General function:
-- (>) :: Ord a => a -> a -> Bool

myCom x = x > length [1..10]

-- The type of myCom has to be:
-- myCom :: Int -> Bool
-- because length returns an Int, and > requires both of its arguments to be of
-- the same type, so x has to be an Int as well.

-- 5) General function:
-- (<) :: Ord a => a -> a -> Bool

myAlpha x = x < 'z'

-- The type of myAlpha has to be:
-- myAlpha :: Char -> Bool
-- because < takes arguments of the same type, one of the arguments is already
-- knonw to be a Char, so the other argument must be a Char as well.
