module BasicDatatypes where
import Data.Tuple

-- Data declaration.
-- data Bool = True | False

data Mood = Blah | Woot deriving Show
-- Mood Swing Exercise.
-- 1. Mood.
-- 2. Blah or Woot.
-- 3. Woot is not a data types.

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- Integral numbers.
-- Includes Int and Integer.

-- Fractional numbers.
-- Includes Float, Double, Rational and Scientific.

-- Num contains all numeric types and provides +, - * and a few others.


-- Typeclasses.
-- Given Prelude> :t (==)
--                 (==) :: Eq a => a -> a -> Bool
-- Eq a is the typeclass constraint saying that the type of inputs have to implement an Eq.


-- Find the Mistakes Exercise
-- 1. true has to have a capital T.
-- 2. Must use '==' instead of '='.
-- 3. False.
-- 4. Merry and Happy must be between "".
-- 5. [Int] is not equivalent to [Char].

-- If-then-else.
greetIfCool :: String -> IO ()
greetIfCool coolness =
    if cool
        then putStrLn "eyyyyy. What's shakin'?"
    else
        putStrLn "pshhhh."
    where cool =
            coolness == "downright frosty yo"

-- Tuples.
t1 = (,) 5 "five"
t2 = (5, "five")
tElem1 = fst t2 -- Should return 5.
tElem2 = snd t1 -- Should return "five".

tSwap = swap t1

fst' :: (a, b) -> a
fst' (a, b) = a

snd' :: (a, b) -> b
snd' (a, b) = b


-- Chapter Exercises.
awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]
-- 1. length [a] -> Int.
-- 2.a 5.
-- 2.b 3.
-- 2.c 2.
-- 2.d 5.
-- 3. 6 is an Integer and / has to be a Fractional.
-- 4.
fixed6 = (6 :: Float) / fromIntegral (length [1, 2, 3])
-- 5. Bool, True.
-- 6. Bool, False.
-- 7.a True.
-- 7.b can not have array of multiple types.
-- 7.c 5.
-- 7.d False.
-- 7.e Error, 9 is not a Bool.
-- 8.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome s = s == reverse s
-- 9.
myAbs :: Integer -> Integer
myAbs i = if i < 0 then (-i) else i
-- 10.
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f a b = ((snd a, snd b), (fst a, fst b))

-- Chapter Correcting Syntax.
-- 1.
x = (+)
f1 xs = w `x` 1
    where w = length xs 
-- 2.
id' x = x
-- 3.
f (a, b) = a
-- 4. d.