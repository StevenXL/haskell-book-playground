-- Why this fails is not clear until we add paraenthesis
bindExp :: Integer -> String
bindExp x = let z = y + x in
            let y = 5 in "the integer was: "
            ++ show x ++ " and y was: "
            ++ show y ++ " and z was: " ++ show z
