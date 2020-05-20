module BelieveTheType where

-- Integers.
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Floats.
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Doubles.
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Booleans.
-- Chars.
-- Tuples.


-- Type Classes is an interface that defines some behavior.

-- Eq Type Class.
eq1 = 4 == 4 -- True.
eq2 = 5 /= 5 -- True.
eq3 = "Ho HO" == "Ho Ho" -- False.

-- Ord Type Class.
o1 = 5 > 4 -- True.
o2 = 'a' > 'b' -- False.

-- Show Type Class.
sh1 = show 3
sh2 = show 5.223

-- Read Type Class.
r1 = read "True" || False
r2 = read "8.2" + 3.8 -- 12.0.
r3 = read "5" - 2 -- 3.
-- r4 = read "4" will give an error since it cant infer.
-- We use type anotations for this.
r5 = read "4" :: Int
r6 = read "[1. 2, 3]" :: [Int]
r7 = read "('a', 1)" :: (Char, Int)
-- Smart minimum information inference.
r8 = [read "True", False, True, True]


-- Enum Type Class are all enumerated and sequential.
enum1 = ['a'..'e']
enum2 = [LT .. GT]
enumElem1 = succ LT -- EQ.
enumElem2 = pred GT -- EQ.
-- enumElem3 = pred LT  bad argument. there is no predecesor.

-- Bounded Type Class.
minChar = minBound :: Char
maxTuple = maxBound :: (Bool, Int, Char)

-- Num Type Class.
-- Contains Int, Double, Float, Integer.

-- Floating Type Class.
-- Contains Float and Double.

-- Integral Type Class.
-- Contains Int and Integer.
sumIntFloat = fromIntegral (length [1, 2, 3]) + 3.4