{-# LANGUAGE NoMonomorphismRestriction #-}

-- point free; notice that in the definition, we don't mention the arguments
f = negate . sum

-- notice that y is the application of f to [1, 2, 3], even though we never
-- mentioned the arguments in the function definition
y = f [1, 2, 3]

-- not point free:
g z xs = foldr (+) z xs

-- point free
g' = foldr (+)

h = g  0 [1, 2, 3]
h' = g' 0 [1, 2, 3]

-- myPrint
myPrint :: Show a => a -> IO ()
myPrint a = (putStrLn . show) a

-- myPrint PointFree
myPrint' :: Show a => a -> IO ()
myPrint' = putStrLn . show
