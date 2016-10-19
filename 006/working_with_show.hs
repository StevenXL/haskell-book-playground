-- below, we have a type constructor called Mood, and a data constructor called
-- Blah; neither Mood nor Blah can be applied to any arguments.
data Mood = Blah

-- Below, we have an instance declaration that allows us to print the values
-- that have the type Mood.
instance Show Mood where
  show _ = "Blah"
