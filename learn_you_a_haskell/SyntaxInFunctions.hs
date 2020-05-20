module SyntaxInFunctions where

-- Pattern Matching.
lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"


sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- Non exhaustive pattern.
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (a, b) (x, y) = (a+x, b+y)


-- Impl of fst and snd.
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c


-- PatternMatching with List Comprehensions.
xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
lc1 = [a+b | (a, b) <- xs]

head' :: [a] -> a
head' [] = error "Can't call head on empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements:" ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- As pattern.
firstLetter :: String -> String
firstLetter "" = "Empty string, whooops!"
firstLetter all@(x:_) = "The first letter of " ++ all ++ " is " ++ [x]


-- Guards.
bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2

max' :: (Ord a) => a -> a -> a
max' a b
    | a < b = b
    | otherwise = a


cmp' :: (Ord a) => a -> a -> Ordering
cmp' a b
    | a == b = EQ
    | a <= b = LT
    | otherwise = GT

bmiTell'' :: Double -> Double -> String
bmiTell'' weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0

initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName


-- Lets instead of while.
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

let1 = [let square x = x * x in (square 5, square 3, square 2)]
let2 = (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey"; bar="there!" in foo ++ bar)
let3 = (let (a, b, c) = (1, 2, 3) in a+b+c) * 100

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

-- Case Expressions.
head1 :: [a] -> a
head1 [] = error "No head for empty lists!"
head1 [x,_] = x

head2 :: [a] -> a
head2 xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of [] -> "empty."
                                               [x] -> "a singleton list."
                                               _ -> "a longer list."

describeList2 :: [a] -> String
describeList2 ls = "The list is " ++ what ls
    where what [] = "empty"
          what [x] = "a singleton list."
          what _ = "a longer list."