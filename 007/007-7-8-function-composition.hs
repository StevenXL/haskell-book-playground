{-# LANGUAGE NoMonomorphismRestriction #-}

-- my compose function
myCompose :: (b -> c) -> (a -> b) -> a -> c
myCompose f g x = f (g x)

-- example 1
sumNegate :: [Integer] -> Integer
sumNegate = negate . sum

-- example 2
takeFiveReversed :: [a] -> [a]
takeFiveReversed = take 5 . reverse

-- example 3
takeFiveFromEnum :: Enum a => a -> [a]
takeFiveFromEnum = take 5 . enumFrom

-- example 4
fa = take 5 . filter odd . enumFrom $ 3
fy = ((take 5) . (filter odd) . enumFrom) $ 3
