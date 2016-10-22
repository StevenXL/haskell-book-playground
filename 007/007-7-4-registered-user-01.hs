module RegisteredUser where

-- do not worry about the newtype declaration; this will be explain later in the
-- book
newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

-- this part of the code we should already understand
--
-- We are creating a type constructor called User
--
-- We are also creating two data constructors.
--
-- One data constructors is called UnregisteredUser
--
-- The other data constructor, RegisteredUser must be applied to values of type
-- Username and AccountNumber.
data User = UnregisteredUser | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name) (AccountNumber number)) = putStrLn (name ++ " " ++ show number)
-- notice the judicious use of parenthesis. Without the first and last
-- parenthesis, the compiler thought that printUser would only be fully applied
-- after printUser was applied to 3 arguments: -- RegisteredUser, (Username
-- name), and finally (AccountNumber number)
