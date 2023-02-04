-- CptS 355 - Spring 2023 -- Homework1 - Haskell
-- Name: Douglas Takada
-- Collaborators: 


{---Important Rules
No use of importing libraries
Generate atleast two test cases for each function
idea for test cases: domain of input, maximum, minimum, inside/outside boundaries, typical values, error values
With auxiliary functions, make them local functions (inside let..in or where block) LOSE POINTS if helper function not defined inside Local Scope 
Proper indentation and good programming style for points
-}

module HW1
     where

-- P1(a) count ;  6%

count :: (Eq t1) => t1 -> [t1] -> Int
count _ [] = 0
count value (x:xs) | (value == x) = 1 + count value xs
                   | otherwise = count value xs

-- P1(b) diff ;  6%

{-
My approach: 
If not equal I include otherwise don't include
-}

diff ::(Eq t1) => [t1] -> [t1] -> [t1]
diff [] [] = []
diff [] [_] = []
diff xs [] = xs
diff [x] (y:ys) | (count x (y:ys) == 0) = x:[]
                | otherwise = []
diff (x:xs) (y:ys) | ((count x (y:ys)) == 0) = x : diff xs (y:ys)
                   | otherwise = diff xs (y:ys)
-- P1(c) bag_diff ; 8%

bag_diff :: Eq t1 => [t1] -> [t1] -> [t1]
bag_diff [] [] = []
bag_diff [] [_] = []
bag_diff xs [] = xs
bag_diff [x] l2 | ((count x l2) == 0) = x:[]
                | otherwise = []
bag_diff (x:xs) l2 | ((1 + count x xs) > count x l2) = x : bag_diff xs l2
                   | otherwise = bag_diff xs l2

-- bag_diff (x:xs) (y:ys) = bag_diff_helper (x:xs) (y:ys) diff((x:xs) (y:ys))
--      where bag_diff_helper (x:xs) (y:ys) [z:zs] | ((count(x:xs) - count(x:(y:ys))) > 0)


-- P2  everyN ; 10%

everyN :: (Eq t1, Num t1) => [t2]-> t1 -> [t2]
everyN iL n = everyNHelper iL n n
     where 
          everyNHelper [] y z = []
          everyNHelper (x:xs) y z | (z == 0) = (x:xs)
          everyNHelper (x:xs) y z | (y == 1) = x : everyNHelper xs z z
                                  | otherwise = everyNHelper xs (y-1) z

                    --               (k == 0) = item : (insertEveryHelper k item xs k)
                    --  | (n == 1) = x :item : (insertEveryHelper k item xs k)
                    --  |otherwise = x : (insertEveryHelper (n-1) item xs k)

-- P3(a) make_sparse ; 15%


-- P3(b) compress ; 15%


-- P4 added_sums ; 8%


-- P5 find_routes ; 8%


-- P6 group_sum ; 15% 



-- Assignment rules ; 3%
-- Your own tests; please add your tests to the HW1Tests.hs file ; 6%



