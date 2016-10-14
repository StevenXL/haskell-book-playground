module Reverse where

rvrs :: String -> String
rvrs x = a ++ b ++ c
         where a = drop 9 x
               b = take 4 (drop 5 x)
               c = take 5 x

main :: IO ()
main = print (rvrs "Curry is awesome")

mainOne :: IO ()
mainOne = print $ rvrs "Curry is awesome"
