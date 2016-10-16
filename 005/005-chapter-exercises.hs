{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

a = (*9) 6
-- a has the type Num a => a; nothing has forced a concrete type

b = head [(0, "doge"), (1, "kitteh")]
-- b has the type Num a => (a, [Char])
-- Remember that all the typeclass constraints go at the front BEFORE the =>
-- Notice that it does NOT have the type (0, [Char]).
-- Type signatures tell us about types, NOT about values. Here, I was confusing
-- pattern matching (which does have to do with values) with type signatures.

c = head [(0 :: Integer, "doge"), (1, "kitteh")]
-- c has the type (Integer, [Char])

d = if False then True else False
-- d has the type Bool
-- Again, we know this will return the value False, but we're interested in
-- types, not in values

e = length [1, 2, 3, 4, 5]
-- e has the type Int; that's what length returns

f = length [1, 2, 3, 4] > length "TACOCAT"
-- f has the type Bool; that's what > returns

x = 5
y = x + 5
w = y * 10
-- w has the type Num a => a because both (+) and (*) accept an instance of Num
-- There's no information to determine otherwise

x' = 5
y' = x' + 5
z y = y * 10
-- z has the type Num a => a -> a
-- Remember that z y = y * 10 can be de-sugared to:
-- z = \y -> y * 10
-- Furthermore, we still don't know anything more specific than that the
-- arguments must be instances of Num

x'' = 5
y'' = x'' + 5
f' = 4 / y''
-- f has the type Fractional a => a
-- That is what (/) returns

a' = "Julie"
b' = " <3 "
c' = "Haskell"
f'' = a' ++ b' ++ c'
-- f'' has the type [Char]


-- Write a Type Signature / Type Declaration
functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

-- Write a Function Given a Type Signature
i :: a -> a
i a = a

c'' :: a -> b -> a
c'' a b = a

cc :: a -> b -> b
cc a b = b

r :: [a] -> [a]
r xs = xs

r' :: [a] -> [a]
r' (x:xs) = xs

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC (aToB a)

aa :: (a -> c) -> a -> a
aa _ a = a

aa' :: (a -> b) -> a -> b
aa' aToB a = aToB a
