module StartingOut where

-- Skipping basic arithmetic.

-- BitOperation.
b1 = True && False -- False.
b2 = True && True -- True.
b3 = False || True -- True.
b4 = not False -- True.
b5 = not (True && True) -- False.

-- Equalities.
e1 = 5 == 5 -- True.
e2 = 1 == 0 -- False.
e3 = 5 /= 5 -- False.
e4 = 5 /= 4 -- True.
e5 = "hello" == "hello" -- True.

-- Basic Functions.
bf1 = succ 5 -- 6.
bf2 = min 3.4 3.2 -- 3.2.
bf4 = max 100 101 -- 101.

-- First Functions.
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

d1 = doubleUs 4 9 -- 26.
d2 = doubleUs 2.3 34.2 -- 73.0.
d3 = doubleUs 28 88 + doubleMe 123 -- 478.

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- Lists.
lostNumbers = [4, 8, 15, 16, 23, 42]
concatNumbers = [1, 2, 3, 4] ++ [9, 10, 11, 12]

-- ++ is slow, let's use cons or ':' instead.
fastConcatNumbers = 5:[9, 10, 11, 12]

-- Accessing List Elements.
idx1 = fastConcatNumbers !! 1 -- 9.
