-- named function
triple :: Integer -> Integer
triple x = x * 3

-- anonymous
-- (\x -> x * 3)

-- Exercises

-- 1) The below functions are all equivalent. If we "desugar" mth, mth', mth'',
-- we end up with mth'''.
-- Notice how mth''' is a name for a function that returns another function that
-- returns another function. Thanks to closures, each inner function has access
-- to the variables bound in the outter function(s).
mth x y z = x * y * z

mth' x y = (\z -> x * y * z)

mth'' x = (\y -> (\z -> x * y * z))

mth''' = (\x -> (\y -> (\z -> (x * y * z))))

-- 3a
addOneIfOdd n = case odd n of
                True -> f n
                False -> f n
                where f n = n + 1

addOneIfOdd' n = case odd n of
                True -> f n
                False -> f n
                where f = (\n -> n + 1)

-- 3b
addFive x y = (if x > y then y else x) + 5

addFive' = (\x -> (\y -> ((if x > y then y else x) + 5)))
