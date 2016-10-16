module TypeInference1 where

f :: Num a => a -> a -> a
f x y = x + y + 3

f' x y = x + y + 3

-- f and f' have the same type signature
-- for f', this is because Haskell has enough information to infer that, in
-- order for the expression x + y + 3 to "work", the types of x and y must be
-- Num (at its most permissive), AND from the use of the + infix operator, it
-- knows that x and y must be the same type.
-- The fact that the compiler makes the type signature the most permissive it
-- can is called "maximally polymorphic type".
