-- Chapter Exercises 004
awesome = ["Papuchon", "curry", ":)"] -- a list of [Char] (a list of lists)
alsoAwesome = ["Quake", "The Simons"] -- a list of [Char] (a list of lists)
allAwesome = [awesome, alsoAwesome]   -- different, a list of list of [Char]


-- 8) write a function that tells you if a given string is palindrome
isPalindrome :: String -> Bool
isPalindrome str = str == reverse str

-- 9) write a function to return the absolute value of a number using if-then-else
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else x * (-1)

-- 10) fill in the definition of the following function, using fst and snd
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f firstTup secondTup = ((snd firstTup, snd secondTup), (fst firstTup, fst secondTup))

f' :: (a, b) -> (c, d) -> ((b, d), (a, c))
f' (a, b) (c, d) = ((b, d), (a, c))

-- Definitions
-- data constructors provide a means of creating values that inhabit a given
-- type. (Please see the discussion on data constructors in haskell-beginners

type Name = String -- this is an alias
data Pet = Cat | Dog Name deriving Show
rover = Dog "Rover"

 -- Pet is the type constructor, Cat and Dog are both data constructors; this
 -- whole thing is a data declaration, and the Dog data constructor takes an
 -- argument The deriving show allows our Pet type to be an instance of Show, in
 -- other words it implements Show, in this case using Show's default
 -- implementation. Remember that a type defines a set of values. Therefore, our
 -- Pet type has defined the values Cat and Dog to be valid Pet values. Data
 -- constructors are functions and there are also values, since values are
 -- first-class citizens in functional programming languages
