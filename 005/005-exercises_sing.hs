-- fix the following code:
-- module sing where
--
-- fstString :: [Char] -> [Char]
-- fstString x = x ++ " in the rain"
--
-- sndString :: [Char] -> Char
-- sndString x = x ++ " over the rainbow"
--
-- sing = if (x > y) then fstString x else sndString y
-- where x = "Singing"
--       x = "Somewhere"

module Sing where -- module name must be capitalized

-- [Char] is ok; String is a synonym for String
fstString :: String -> String
fstString x = x ++ " in the rain"

sndString :: String -> String -- The return value is a String, or [Char], NOT Char
sndString x = x ++ " over the rainbow"

sing = if (x > y) then fstString x else sndString y
       where x = "Singing" -- Haskell IS whitespace sensitive
             y = "Somewhere" -- we declared x twice; needed a y

-- to satisfy the second problem, we could change sing to:
-- sing = if (x > y) then fstString x else sndString y
--        where y = "Singing" -- Haskell IS whitespace sensitive
--              x = "Somewhere" -- we declared x twice; needed a y
