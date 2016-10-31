-- Ubiquitous language of list comprehensions
-- generator
-- output function
-- predicate(s)


-- the simplest list comprehension requires only a generator and an output
-- function; in other languages, this is called map
simpleComprehension = [ x^2 | x <- [1..10]]

-- adding a predicate to the list comprehension
-- in other languages, this would be a filter and then a map
comprehensionWithPredicate = [ x^2 | x <- [1..10], even x]

-- multiple generators
multipleGenerators = [ x^y | x <- [1..3], y <- [4..6]]

mySqr = [ x^2 | x <- [1..5]]

-- remove all lowercase letters
removeNonCapital :: String -> String
removeNonCapital str = [chr | chr <- str, elem chr ['A'..'Z']]

-- given the following
myCube = [ y^3 | y <- [1..5]]

-- my tuples
myTuple = [(x, y) | x <- mySqr, y <- myCube]
myTuple' = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]
