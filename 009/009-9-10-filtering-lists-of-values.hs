-- filtering
multiplesOfThree :: Integral a => [a] -> [a]
multiplesOfThree xs = filter (\x -> rem x 3 == 0) xs

countMultiplesOfThree :: Integral a => [a] -> Int
countMultiplesOfThree xs = length . multiplesOfThree $ xs

-- removeArticles
removeArticles :: String -> [String]
removeArticles str = [x | x <- words str, not $ elem x ["the", "an", "a"]]
