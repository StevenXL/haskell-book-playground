-- Fix the following module
-- module Arith3Broken where
-- main :: IO ()
-- Main = do
--   print 1 + 2
--   putStrLn 10
--   print (negate -1)
--   print ((+) 0 blah)
--   where blah = negate 1

module Arith3Broken where
main :: IO ()
main = do -- main had wrong capitalization
        print (1 + 2) -- do block must be indented properly; -- must parenthesis to disambiguate
        print 10 -- change to a print, since putStrLn takes a string
        print (negate (-1)) -- The - infix operator has to be wrapped in parenthesis
        print ((+) 0 blah)
        where blah = negate 1
