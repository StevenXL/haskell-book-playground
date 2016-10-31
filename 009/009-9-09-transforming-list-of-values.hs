-- myMap
myMap :: (a -> b) -> [a] -> [b]
myMap fun xs = go fun xs []
               where go fun [] acc = acc
                     go fun (x:xs) acc = go fun xs (acc ++ [fun x])


-- a much better version
myMap' fun [] = []
myMap' fun (x:xs) = fun x : myMap fun xs
