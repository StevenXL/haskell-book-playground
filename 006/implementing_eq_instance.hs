data Trivial = Trivial

-- the data declaration above means we have a new datatype (also known more
-- simply as a type). The type constructor is Trivial, and the data constructor
-- is Trivial.

instance Eq Trivial where
  Trivial == Trivial = True

-- We used the keyword instance to begin a declaration of a typeclass instance
--
-- The name here is a bit more involved. The first name is the typeclass we are
-- implementing, and the second name is the type that we are implementing that
-- typelcass for.
--
-- In the above example, we implemented the == function for Trivial using infix
-- notation. The following would have worked as well:
-- (==) Trivial Trivial = True
