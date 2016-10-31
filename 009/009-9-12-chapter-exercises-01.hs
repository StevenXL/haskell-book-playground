import Data.Char

-- removeUppercase
removeLowercase :: String -> String
removeLowercase str = [chr | chr <- str, isUpper chr]

-- uppercase first letter
upperCaseFirstLetter :: String -> String
upperCaseFirstLetter [] = []
upperCaseFirstLetter (x:xs) = toUpper x : xs

-- uppercase all
-- we could have used many different ways of doing this but we wanted recursive
-- note also that there is no function composition, which we could have done
upperCaseAll :: String -> String
upperCaseAll [] = []
upperCaseAll (x:xs) = toUpper x : upperCaseAll xs

-- capitalizeAndReturnFirstChr
capitalizeAndReturnFirstChr :: String -> Maybe Char
capitalizeAndReturnFirstChr [] = Nothing
capitalizeAndReturnFirstChr (x:xs) = Just $ toUpper x
