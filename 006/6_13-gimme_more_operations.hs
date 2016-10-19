-- the below doesn't type check because + cannot accept values of any type
-- add :: a -> a -> a
-- add x y = x + y

add :: Num a => a -> a -> a
add x y = x + y

-- the below doesn't type check because > can only operator on types that have
-- instances of Ord. We need to specify this constraint in our type signature.
-- addWeird :: Num a => a -> a -> a
-- addWeird x y = if x > 1 then x + y else x

addWeird :: (Ord a, Num a) => a -> a -> a
addWeird x y = if x > 1 then x + y else x
