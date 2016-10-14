module Print3 where

myGreeting :: String
-- the above line reads as "myGreeting has the type String"
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
        putStrLn myGreeting
        putStrLn secondGreeting
        where secondGreeting = concat [hello, " ", world]


