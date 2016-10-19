-- doesn't type check because we need to constrain the type variable a to instances of Eq
-- check :: a -> a -> Bool
-- check a a' = a == a'

-- the below does type check
check' :: Eq a => a -> a -> Bool
check' a a' = a == a'

-- check'' also type checks because we have a type constraint of Ord, and all
-- types that have an instance of Ord also have an intsance of Eq.
--
-- Because all Ord must have an instance of Eq, it is said that Eq is a superset
-- of Ord. Every type that has an instance Ord also has an instance Eq, but not
-- all types that have an instance Eq have an instance Ord.

check'' :: Ord a => a -> a -> Bool
check'' a a' = a == a'
