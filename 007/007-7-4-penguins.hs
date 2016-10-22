module Penguins where

-- Below, we are creating a type constructor, and many nullary data
-- constructors.
data WherePenguinsLive = Galapagos
                       | Antartica
                       | Australia
                       | SouthAfrica
                       | SouthAmerica
                       deriving (Show, Eq)

-- Below, we are creating a type constructor Penguin, and a single data
-- constructor. This data constructor is NOT nullary. It takes one argument, a
-- value of type WherePenguinsLive.
data Penguin = Peng WherePenguinsLive deriving (Show, Eq)

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _ = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng home) = home

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _ = False

antarticPenguin :: Penguin -> Bool
antarticPenguin (Peng Antartica) = True
antarticPenguin _ = False

antarticOrGalapagosPenguin :: Penguin -> Bool
antarticOrGalapagosPenguin (Peng Antartica) = True
antarticOrGalapagosPenguin (Peng Galapagos) = True
antarticOrGalapagosPenguin _ = False

-- note that antarticOrGalapagosPenguin' is more idiomatic than
-- antarticOrGalapagosPenguin. 
-- Why? Because antarticOrGalapagosPenguin' functions that are already defined,
-- and part of the beauty of functional programming is that we can compose
-- small, simply, almost certainly correct functions into complex functions.
-- antarticOrGalapagosPenguin' is the way to write this functionality
antarticOrGalapagosPenguin' :: Penguin -> Bool
antarticOrGalapagosPenguin' p = antarticPenguin p || galapagosPenguin p
