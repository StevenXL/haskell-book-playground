-- all of the following are type synonyms. Like Scott Wlaschin might say, we are
-- now building up our ubiquitous vocabulary
type Numerator = Integer
type Denominator = Integer
type Quotient = Integer
type Remainder = Integer

dividedBy :: Numerator -> Denominator -> (Quotient, Remainder)
dividedBy num denom = go num denom 0
                      where go num denom count
                              | (num - denom * count) < denom = (count, num - denom * count)
                              | otherwise = go num denom (count + 1)
