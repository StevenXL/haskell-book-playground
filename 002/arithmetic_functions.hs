-- div & quot

-- div and quot are two functions to do Integral Division
-- Integral Division is division on integers
-- This means that these functions take an Int and return an Int
-- The line right above this means that they have to round the results

-- div - Integral Division - Rounds Down
-- divExample reduces to (-4). The fractal answer is -3.33, and div rounds down.
divExample = div 20 (-6)

-- quot - Integral Divison - Rounds Towards Zero
-- quotExample evalutes to (-3). The fractal answer is again -3.333, rounds towards 0
quotExample = quot 20 (-6)

-- rem & mod

-- rem and mod are used for Integral Division as well
-- They both take an Int and return an Int, but the return is based on the remainder

-- The thing to remember about rem and mod is that they are all about giving
-- back the remainder.
-- However, mod will take on the sign of the divisor
-- rem will take on the sign of the dividend

-- remember dividend / divisor = quotient

-- We can turn infix operators into prefix functions by wrapping them in
-- parenthesis
x = (+) 1 2
-- the x above will evaluate to 3
y = (+1)
-- The y above is a partial application of the + operator.
-- The pattern of partially applying an infix operator is called sectioning
-- Again, that's nothing more than partially applying an infix operator.
