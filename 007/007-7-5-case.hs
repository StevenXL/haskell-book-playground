f :: Integer -> String
f x = if x + 1 == 1 then "AWESOME" else "wut"

f' :: Integer -> String
f' x = case x + 1 == 1 of
         True -> "AWESOME"
         False -> "wut"

palindrome :: String -> String
palindrome str = case reverse str == str of
                   True ->  "yes"
                   False -> "no"

palindrome' :: String -> String
palindrome' str = case y of
                    True -> "yes"
                    False -> "no"
                  where y = reverse str == str

greetIfCool :: String -> IO ()
greetIfCool str = case cool of
                    True -> putStrLn "eyyyyy. What's shaking'?"
                    False -> putStrLn "pshhh."
                  where cool = str == "downright frosty yo"

