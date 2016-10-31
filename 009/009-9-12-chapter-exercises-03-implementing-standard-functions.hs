-- 1: myOr - returns True if any Bool in the list is True
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs)
  | x = True
  | otherwise = myOr xs

-- 2: myAny - returns true if a -> Bool applie to any of the values in the list
-- returns true
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny func (x:xs)
  | func x = True
  | otherwise = myAny func xs

-- 3: myElem
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem el (x:xs)
  | el == x = True
  | otherwise = myElem el xs

-- 4: myReverse
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 5. squish
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

-- 6. squishMap
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap func xs = squish [func x | x <- xs]

-- 7.squishAgain; must use the squishMap function
squishAgain :: [[a]] -> [a]
squishAgain xs = squishMap (\x -> x) xs

-- 8: myMaximumBy
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy func (x:xs) = go func x xs
                          where go _ z [] = z
                                go function z (y:ys) = if function z y == GT then go function z ys else go function y ys

-- 9: myMinimumBy
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy func (x:xs) = go func x xs
                          where go _ z [] = z
                                go function z (y:ys) = if function z y == GT then go function y ys else go function z ys

-- 10. myMaximum
myMaximum :: Ord a => [a] -> a
myMaximum xs = myMaximumBy (\x y -> if x > y then GT else LT) xs

-- 11. myMinimum
myMinimum :: Ord a => [a] -> a
myMinimum xs = myMinimumBy (\x y -> if x > y then GT else LT) xs
