module Types where

-- Compiler given an ambiguous type, will give th least specifi an general type. Such as Num. 
fifteen = 15
-- :t fifteen.

-- We can imploictly assign a type.
fifteenInt = 15::Int
fifteenDouble = 15::Double

-- Type Matching Exercises.
-- a - c
-- b - d
-- c - b
-- d - a
-- e - e


-- Currying (Partial application).
addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addOne = addStuff 1 -- Should give Integer -> Integer.
addAll = addOne 2 -- Gives Integer, 8.

subtractStuff :: Integer -> Integer -> Integer
subtractStuff x y = x - y - 10

subtractOne = subtractStuff 1 -- Should give (Integer -> Integer).
subtractAll = subtractOne 11 -- Should give -20.

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

curriedFunction :: Integer -> Bool -> Integer
curriedFunction i b = i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonNested :: Integer -> Bool -> Integer
anonNested = \i -> \b -> i + (nonsense b)


-- Currying and uncurrying existing functions.
curry' f a b = f (a, b) 
uncurry' f (a, b) = f a b


-- Sectioning.
-- Basically, partial application of infix operators.

sx = 5
sy = (2^)
sz = (^2)

syx = sy sx
szx = sz sx

celebrate = (++ " woot!")
c1 = celebrate "naptime"
c2 = celebrate "dogs"

t1 = elem 9 [1..10]
t2 = 9 `elem` [1..10]

t3 = (`elem` [1..10])
t3_f = t3 9

hasTen = elem 10
t4 = hasTen [1..9]


-- Type Arguments Exercises.
-- 1. a
-- 2. d
-- 3. d
-- 4. c
-- 5. a
-- 6. e
-- 7. d
-- 8. a
-- 9. c


-- Polymorphism.
-- Working around constraints.
-- Since length [1, 2, 3] returns and Integral, we can not use it as 6 / (length [1, 2, 3])
-- Workaround would be
fI = 6 / fromIntegral (length [1, 2, 3])

-- Type inference.
ti :: Num a => a -> a -> a
ti x y = x + y + 3

-- Apply Yourself Exercises.
-- 1. [Char] -> [Char].
-- 2. Fractional a => a -> a
-- 3. Int a => [Char].
-- 4. Fractional a => a -> Bool.
-- 5. Char a => a -> Bool.


-- Asserting types for declarations.
tple x = x * 6
tpleInt x = x * 6::Int

tripleWhere x = tripleItYo x
  where tripleItYo :: Integer -> Integer
        tripleItYo y = y * 3


-- Chapter Exercises.
-- 1. c.
-- 2. a.
-- 3. b.
-- 4. c.
-- Determine the type.
-- 1. a Num a => a.
-- 1. b Num a => (a, [Char]).
-- 1. c (Integer, [Char]).
-- 1. d Bool.
-- 1. e Int.
-- 1. f Bool.
-- 2. Num.
-- 3. Num.
-- 4. Fracional.
-- 5. [Char].
-- Does it compile?
-- 1. bigNum does not receive a parameter.
-- 2. x does not receive a parameter.
-- 3. b or c does not receive a parameter.
-- 4. variables not in scope for c.
-- Type variable or specific type constructor?
-- 2. zed fully polymorphic, Zed and Blah concrete.
-- 3. a fully polymorphic, b constrained polymorphic, C concrete.
-- 4. f and g fully polymorphic, C concrete.
-- Write a type signature.
-- 1. functionH :: Char a => [a] -> a.
-- 2. functionC :: Eq a, b => a -> b -> Bool.
-- 3. functionS :: (a, b) -> c.
-- Given a type, write the function.
-- 1. i a = a
-- 2. c a b = a
-- 3. c'' b a = b
-- 4. c' a b = b
-- 5. r a = a
-- 6. co bToC aToB a = bToC
-- 7. a aaToC aa = aa
-- 8. a' aToB a = aToB a
-- Fix it.
-- 1. fstString :: [Char] -> [Char].
--    sndString :: [Char] -> [Char].
--    y = "Somehwere".
-- 2. if (y > x)  then fstString x or sndString y.
-- 3. main = do.
--    print (negate 1)

-- Type-Kwon-Do
-- 1.
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h i = g (f i)
-- 2.
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w (q a) 
-- 3.
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)
-- 4.
munge :: (x -> y)
  -> (y -> (w, z))
  -> x
  -> w

munge xToY yToWZ x = fst (yToWZ (xToY x))
