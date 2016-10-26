-- Recursive functions are a specific case of function composition.

-- In function composition, we "bake in" the number of times that the output of
-- one function will be utilized as the input of another function
inc :: Num a => a -> a
inc = (+1)

three = inc . inc . inc $ 0

-- With recursion, we allow the argument to determine how many times to utilize
-- the output of one function as the input of another.
inc' :: (Num a, Num b, Eq b) => b -> a -> a
inc' 0 c = c
inc' n c = inc' (n - 1) (c + 1)

three' = inc' 3 0
