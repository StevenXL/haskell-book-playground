-- Write the Eq instances for the datatype provided
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  TisAn a == TisAn a' = a == a'

-- notice that, because we know that the value a and the value b HAVE to be
-- integers, we don't have to provide any constraints, even though we are
-- relying on the type of a to be instances of Eq.

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  Two a b == Two a' b' = a == a' && b == b'

-- Notice that, once we get into implementing instances of a typeclass, we
-- really are defining a function, so we've moved from the type level to the
-- term level. Furthermore, notice how we are using pattern matching so that
-- this particular definition of (==) only works for values of type Two. That's
-- in our "function head".

data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
  TisAnInt a == TisAnInt a' = a == a'
  TisAnInt _ == TisAString _ = False
  TisAString a == TisAString a' = a == a'
  TisAString _ == TisAnInt _ = False

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  Pair a b == Pair a' b' = a == a' && b == b'

-- this is a very important example to understand. Notice that we had to provide
-- a typeclass constraint, such that whatever type 'a' is, it must implement Eq.
-- The reason why is because we are using that in our own instance of Eq for
-- Pair.
-- Notice that in the declaration, we are still at "type level", but when we do
-- the implementation of the function, we're at term level again.

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  Tuple a b == Tuple a' b' = a == a' && b == b'

-- notice that we had to put the parenthesis in the right place.

data Which a = ThisOne a | ThatOne a

instance (Eq a) => Eq (Which a) where
  ThisOne a == ThisOne a' = a == a'
  ThatOne a == ThatOne a' = a == a'
  ThisOne _ == _ = False
  ThatOne _ == _ = False

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  Hello a == Hello a' = a == a'
  Goodbye a == Goodbye a' = a == a'
  _ == _ = False

-- above, we are saying that we are declaring an instance of Eq for the type
-- EitherOr a b.
--
-- We are using a typeclass constraint on the type variables a and
-- b - we need the types of those variables to implement Eq because we are using
-- that definition in our instance of Eq for EitherOr.
--
-- Note that if we did not need a or b to be instances of Eq - i.e., if we
-- didn't use that definition in our "body" - then we wouldn't need the
-- typeclass constraint.
