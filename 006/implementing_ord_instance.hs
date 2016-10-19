-- data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Eq, Ord, Show)

-- In the default implementation above, we derived Eq, Ord, Show.
-- The default implementation for Ord considers values to the left to be less
-- than values to the right, as if they were placed on a number line.
-- Therefore, Fri < Sat would reduce to True.

data DayOfWeek = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Eq, Show)

instance Ord DayOfWeek where
  compare Fri _ = GT
  compare _ Fri = LT
  compare _ _ = EQ
