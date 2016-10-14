-- Part 2
appendBang :: String -> String
appendBang x = x ++ "!"

returnFourthChar :: String -> String
returnFourthChar x = [x !! 4]

dropNine :: String -> String
dropNine x = drop 9 x

-- Part 3
thirdLetter :: String -> Char
thirdLetter x = x !! 2

-- Part 4
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

-- Part 5
rvrs :: String -> String
rvrs constString = a ++ b ++ c
                   where a = drop 9 constString
                         b = take 4 (drop 5 constString)
                         c = take 5 constString


-- Part 6
-- see reverse.hs
