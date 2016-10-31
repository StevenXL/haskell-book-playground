-- When talking about data structures in Haskell, we'll often allude to the idea
-- of a spine.

-- A spine is the connective structure that ties all the values of a collection
-- together.

-- For a list, the spine is the cons operator (:), like so:

-- [1, 2, 3]
-- 1 : 2 : 3 : []
--          :
--       /     \
--      1       :
--           /    \
--          2      :
--              /    \
--             3      []
--

-- Now that we know that the spine - the connective tissue of a data structure -
-- is separate from the values that that data structure contains, we can
-- introduce the concept that, sometimes, it is enough to operate on the spine,
-- and not on the values.
-- For example, if we have a list that has not yet been evaluted:
-- blah = enumFromTo 'a' 'z'
-- If we ask for the length of that list (length blah), the values in that list
-- don't have to be evaluted - Haskell will operate on the spine only.

x = take 1 $ filter even [1, 2, 3, undefined] -- no error, compiler only evalutes filter even [1, 2, 3, undefined] just enough to get the first value
y = filter even [1, 2, 3, undefined]

x' = enumFromTo 1 10
