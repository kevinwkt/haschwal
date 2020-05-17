module Strings where

intro = print "Welcome to Strings"
intro2 = putStrLn "Using putStrLn"
intro3 = putStrLn "Using putStr"

-- main :: IO()
-- -- main = putStrLn "Yikes!"

-- main = do
--     putStrLn "Count to four for me:"
--     putStr   "one. two"
--     putStr   ", three, and"
--     putStrLn " four!"


myGreeting :: String
myGreeting = "hello" ++ "world!"

hello :: String
hello = "hello"

world :: String
world = "world"

main :: IO()
main = do
    putStrLn myGreeting
    putStrLn secondGreeting
    where secondGreeting =
              concat [hello, " ", world]

-- Top level scopes. (Let vs Where)
topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
 where woot :: Integer
       woot = 10

topLevelValue :: Integer
topLevelValue = 5

-- Types of concatenation functions.
concat1 = concat [[1, 2], [3, 4, 5], [6, 7]]
concat2 = concat ["Iowa", "Melman", "Django"]

cons' = 'c' : "hris"
lHead = head "chris" -- Should return 'c'.
lTail = tail "chris" -- Should return "hris".
lTake = take 1 "chris" -- Should return 'c'.
lDrop = drop 2 "chris" -- Should return "ris".
lSheBang = "chris" !! 1 -- Should return 'h'.

-- 3.8 Chapter Exercises.
-- Reading Syntax.
-- 1.a True.
-- 1.b False.
-- 1.c True.
-- 1.d False.
-- 1.e False.
-- 1.f True.
-- 1.g False.
-- 1.h True.
-- 2.a d.
-- 2.b c.
-- 2.c e.
-- 2.d a.
-- 2.e b.
-- Building Functions.
-- 1.a init x
-- 1.b x !! 4
-- 1.c drop 9 x
-- 2. Same as above if not similar.
-- 3.
thirdLetter :: String -> Char
thirdLetter x = x !! 2
-- 4. 
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x
-- 5.
rvs x = (drop 9 x) ++ " " ++ (take 2 (drop 6 x))++ " " ++ (take 6 x)