-- what is the type of the top-level definitions below

first = [[True, False], [True, True], [False, True]]
second = [[3 == 3], [6 > 5], [3 < 4]]

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "whoops"

frappe :: String -> String
frappe = flippy "haha"

five = cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue"))
six = cattyConny (flippy "Pugs" "are") "awesome"

recurSum :: (Eq a, Num a) => a -> a
recurSum n = go n
             where go n
                    | n == 0 = 0
                    | otherwise = n + recurSum (n - 1)

recurMult :: Integral a => a -> a -> a
recurMult x y = go x y
                where go x y
                       | y == 0 = 0
                       | otherwise = x + recurMult x (y - 1)

-- McCarthy 91
-- There are more elegant ways to write this, but the directions state that x
-- has to be recursive.
mc91 :: Integer -> Integer
mc91 x
  | x > 100 = x - 10
  | x == 91 = x
  | x < 91 = mc91 (x + 1)
  | x > 91 = mc91 (x - 1)
