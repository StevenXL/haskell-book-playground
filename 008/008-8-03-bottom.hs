-- the function below returns an exception, but in reality this is bottom,
-- because a result was never going to be returned
f :: Bool -> Int
f True = error "blah"
f False = 0

-- partial functions (non-exhaustive pattern matching) can also result in bottom
f' :: Bool -> Int
f' False = 0

-- new datatype / type:
-- Notice that Maybe is a type constructor that can be applied to an argument
-- Nothing is a data constructor that takes no arguments
-- And Just is a data constructor that can be applied to an argument
-- data Maybe a = Nothing | Just a

f'' :: Bool -> Maybe Int
f'' False = Just 0
f'' _ = Nothing

