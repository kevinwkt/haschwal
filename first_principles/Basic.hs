module Basic where

-- Basic structure of a function declaration.
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

-- Function to multiply 3.
-- Functions and variables also start with lowercase letters.
triple x = x * 3

-- Exercise 2.5.2
e x = 3.14 * (x * x)

e2 x = pi * (x * x)

-- Use this as infix to double check.
infixMultTest a b = a * b

-- Heal the Sick exercise.
area x = pi * (x * x)

double x = x * 2

xx = 7
yy = 10
ff = x + y

-- A Head Code exercise.
one = let x = 5 in x -- 5.
two = let x = 5 in x * x -- 25.
three = let x = 5; y = 6 in x * y --30.
four = let x = 3; y = 1000 in x + 3 -- 6.

-- Chapter Exercises 2.11
p1 = 2 + 2 * 3 - 1 -- 2 + 6 - 1 = 7.
p2 = (^) 10 $ 1 + 1 -- 10^2 = 100.
p3 = 2 ^ 2 * 4 ^ 5 + 1 -- 4 * 1024 + 1 = 4096 + 1 = 4097.

ex1 = 1 + 1 == 2 -- True.
ex2 = (10 ^ 2) == (10 + 9 * 10) -- True. 
ex3 = (400 - 37) == ((-) 37 400) -- False.
-- Not the same.
ex4_1 = 100 `div` 3
ex4_2 = 100 / 3
ex5 = (2 * 5 + 18) == (2 * (5 + 18)) -- False.

z = 7
x = y ^ 2 -- 225.
waxOn = x * 5 -- 1125.
y = z + 8 -- 15.

f1_1 = 10 + waxOn -- 1135.
f1_2 = (+10) waxOn -- 1135.
f1_3 = (-) 15 waxOn -- (negative 1110).
f1_4 = (-) waxOn 15 -- 1110.

f2 x = x * 3

f3 = triple waxOn -- 3375.

-- 1125.
f4       = x * 5
 where y = z + 8
       x = y ^ 2
       z = 7;

