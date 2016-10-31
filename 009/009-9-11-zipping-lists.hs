-- zipping lists

-- myZip
myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

-- myZipWith
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith func (x:xs) (y:ys) = func x y : myZipWith func xs ys

-- myZip in terms of zipWith
myZip' :: [a] -> [b] -> [(a, b)]
myZip' xs ys = myZipWith (\x y -> (x, y)) xs ys
