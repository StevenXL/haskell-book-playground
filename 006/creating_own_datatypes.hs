data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving Show

-- The above data declaration has created a new datatype / type: DayOfWeek
-- DayOfWeek is known as a type constructor
--
-- Furthermore, we've created several nullary data constructors, one for each
-- day of the week.
-- Note that these data constructors are functions, and functions are values.
--
-- Type constructors - i.e., DayOfWeek - appear at the type level.
-- Data constructors - e.g., Mon - appear at the term level.

data Date = Date DayOfWeek Int deriving Show

-- The above data constructor is doing some very cool things.
--
-- First, it is defining a datatype / type constructor called Date. This Date is
-- the Date to the left of the equal sign.
--
-- Secondly, we are defining a data constructor called Date. This is the Date to
-- the right of the equal sign. We define Date - the data constructor - as a
-- function that is is fully applied to two values. The first value must be of
-- type DayOfWeek, and the second value must be of type Int.
--
-- Once again, I had briefly confused the above with pattern matching. What we
-- need is a value with a type of DayOfWeek as the first argument to Date the
-- data constructor. Date the data constructor can't accept DayOfWeek the type
-- as an argument, because DayOfWeek is a type, and types are not first-class
-- citizens. They cannot be used as arguments.

instance Eq DayOfWeek where
  Mon == Mon = True
  Mon ==  _  = False

  Tue == Tue = True
  Tue ==  _  = False

  Wed == Wed = True
  Wed ==  _  = False

  Thu == Thu = True
  Thu ==  _  = False

  Fri == Fri = True
  Fri ==  _  = False

  Sat == Sat = True
  Sat ==  _  = False

  Sun == Sun = True
  Sun ==  _  = False


-- above, we've used the instance keyword to create an instance of the typeclass
-- Eq for the type DayOfWeek.
-- Also, notice that we made sure to make the instance of Eq for the DayOfWeek
-- was exhaustive - i.e., our instance exhibits totality, and is not a partial
-- function.
-- Note that a partial function is completely unrelated to partial application.
-- A partial function is one that does not exhibit totality - there are some
-- valid inputs for which there are no valid outputs.

instance Eq Date where
  (==) (Date weekday dayOfMonth)
      (Date weekday' dayOfMonth') =
    weekday == weekday' && dayOfMonth == dayOfMonth'
