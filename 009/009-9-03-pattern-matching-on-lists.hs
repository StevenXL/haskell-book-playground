-- unsafe / partial / non-exhaustive pattern match tail and head functions
-- the functions below will blow up when passed empty lists

myHead :: [a] -> a
myHead (x:_) = x

myTail :: [a] -> [a]
myTail (x:xs) = xs

-- we can make them total by having a base case

-- Is it possible to have a safe head function?
-- myHead' :: [a] -> a
-- myHead' [] = []
-- myHead' (x:_) = x

myTail' :: [a] -> [a]
myTail' [] = []
myTail' (x:xs) = xs

-- or we can use the Maybe type. The Maybe type makes our failure case explicit.
-- data Maybe a = Nothing | Just a

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:[]) = Nothing -- arg could also have been [x]
safeTail (x:xs) = Just xs
