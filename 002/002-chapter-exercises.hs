-- Parenthesize more explicitly the following:

org1 = 2 + 2 * 3 - 3
ans1 = 2 + (2 * 3) - 3

-- Parenthesize more explicitly the following:
org2 = (^) 10 $ 1 + 1
ans2 = (^) 10 $ (1 + 1)

-- Parenthesize more explicitly the following:
org3 = 2 ^ 2 * 4 ^ 5 + 1
ans3 = (2 ^ 2) * (4 ^ 5) + 1

-- waxOnLet
waxOnLet = let z = 7
               y = z + 8
               x = y ^ 2
           in x * 5

-- waxOnWhere
waxOnWhere = x * 5
             where z = 7
                   y = z + 8
                   x = y ^ 2

triple x = x * 3

waxOff x = triple x
