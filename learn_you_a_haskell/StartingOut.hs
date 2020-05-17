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

listList = [[1, 2, 3, 4], [11, 22, 33, 44]]

listListAppend = listList ++ [[7, 8, 9]]

listListConcat = [6, 6, 6]:listListAppend

-- Comparing lists.
cmpL1 = [3, 2, 1] > [2, 1, 0] -- Should return True.
cmpL2 = [3, 4, 2] > [2, 4] -- Should return True.
cmpL3 = [2, 3, 4] == [2, 3, 4, 5] -- Should return False.

-- Other list operations.
lHead = head listListConcat -- Should return [6, 6, 6].
lLast = last listListConcat -- Should return [7, 8, 9].
lTail = tail listListConcat -- Should return [[1, 2, 3, 4], [11, 22, 33, 44], [7, 8, 9]].
lInit = init listListConcat -- Should return [[6, 6, 6], [1, 2, 3, 4], [11, 22, 33, 44]].

lLength = length listListConcat -- Should return 4.
lNull = null listListConcat -- Should return False.
lReverse = reverse listListConcat -- Should return [[7, 8, 9], [11, 22, 33, 44], [1, 2, 3, 4], [6, 6, 6]].
lTake = take 1 listListConcat -- Should return [[6, 6, 6]],
lDrop = drop 1 listListConcat -- Should return lTail.
lDropCheck = lDrop == lTail -- Should return True.

lMax = maximum [1, 2, 3] -- Should return 3.
lMin = minimum [1, 2, 3] -- Should return 1.
lSum = sum [1, 2, 3] -- Should return 6.
lProduct = product [1, 2, 3] -- Should return 6.

isPresent = 1 `elem` [1, 2, 3]

-- Repeat vs cycle.
-- Cycle goes through a list.
six3 = take 6 (cycle [1, 2, 3])
six6 = take 6 (repeat 6)
-- Replicates 6x 7 [7, 7, 7, 7, 7, 7].
six7Better = replicate 6 7

-- List Comprehensions.
doubledLower10 = [x*2 | x <- [1..10]]
doubledLower10Bigger12 = [x*2 | x <- [1..10], x*2 >= 12]
remainderThree50To100 = [x | x <- [50..100], x `mod` 7 == 3]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

multiplePredicates = [x+y | x <- [1, 2, 3], y <- [1, 2, 3]]
multiplePredicates2 = [x+y | x <- [1, 2, 3], y <- [1, 2, 3], x+y >= 5]

-- Length function.
length' x = sum [1 | _ <- x]

removeLowercase xs = [x | x <-xs , x `elem` ['A'..'Z']]

testList = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
nestedListComp = [ [x | x <- xs, even x] | xs <-testList]


-- Tuples.
t1 = ("hello", 0)
t1_1 = fst t1
t1_2 = snd t1

zipped1 = zip [1, 2, 3] ["one", "two", "three"] -- [(1,"one"), (2, "two"), (3, "three")].
zippedInf = zip [1..] ["one", "two", "three"]

-- Finding the Right Triangle.
triangles = [(x, y, z) | z <- [1..10], x <- [1..z], y <- [1..x], x^2 + y^2 == z^2, x + y + z == 24]