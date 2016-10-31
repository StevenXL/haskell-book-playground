-- write the following function
-- myWords String -> [String]
-- use takeWhile and dropWhile

myWords :: String -> [String]
myWords "" = []
myWords str = [firstWord str] ++ myWords restOfStr
              where restOfStr = trimWhitespace . dropFirstWord $ str

firstWord :: String -> String
firstWord str = takeWhile (/= ' ') str

dropFirstWord :: String -> String
dropFirstWord str = dropWhile (/= ' ') str

trimWhitespace :: String -> String
trimWhitespace str = dropWhile (== ' ') str

myLines :: String -> [String]
myLines "" = []
myLines str = [firstLine str] ++ myLines restOfStr
              where restOfStr = trimNewLine . dropFirstLine $ str

firstLine :: String -> String
firstLine str = takeWhile (/= '\n') str

dropFirstLine :: String -> String
dropFirstLine str = dropWhile (/= '\n') str

trimNewLine :: String -> String
trimNewLine str = dropWhile (== '\n') str

-- The above myLines and myWords functions work fine, but we can abstract the
-- trim and drop functions so that they take an argument of what they should
-- trim or drop. A.K.A. PARAMETIZE ALL THE THINGS.
trim :: Char -> String -> String
trim chr str = dropWhile (== chr) str

dropUntil :: Char -> String -> String
dropUntil chr str = dropWhile (/= chr) str

-- We can continue abstracting this all out so that "myCollection" and "firstX"
-- also take a parameter - the separator. In other words, we are implementing
-- splitAt

type Separator = Char -- type synonym

myCollection :: Separator -> String -> [String]
myCollection _ "" = []
myCollection sep str = [firstX sep str] ++ myCollection sep restOfStr
                       where restOfStr = trim sep . dropUntil sep $ str


firstX :: Separator -> String -> String
firstX sep str = takeWhile (/= sep) str
