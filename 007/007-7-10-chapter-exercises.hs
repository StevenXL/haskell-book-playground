{-# LANGUAGE NoMonomorphismRestriction #-}

f :: Char -> String
f = undefined

g :: String -> [String]
g = undefined

-- g . f :: Char -> [String]

h :: Ord a => a -> a -> Bool
h = undefined

-- The type of h 1 :: Ord a => a -> Bool

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y z = case z of True -> x
                               False -> y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y z
              | z = x -- or, (z == True) = x
              | otherwise = y

g' :: (a -> b) -> (a, c) -> (b, c)
g' f (x, y) = (f x, y)
