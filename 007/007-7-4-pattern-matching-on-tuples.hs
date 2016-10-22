-- f does not use pattern matching
f :: (a, b) -> (c, d) -> ((a, c), (b, d))
f firstTup secondTup = ((fst firstTup, fst secondTup), (snd firstTup, snd secondTup))

-- f' uses pattern matching
f' :: (a, b) -> (c, d) -> ((a, c), (b, d))
f' (a, b) (c, d) = ((a, c), (b, d))
