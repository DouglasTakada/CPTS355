-- CptS 355 - Spring 2023 -- Homework2 - Haskell
-- Name:
-- Collaborators: 

module HW2
     where

{- P1 - remove_every, remove_every_tail  -}

-- (a) remove_every – 7%

remove_every n []  = [] 
remove_every n lst = remove_helper n lst n 
  where
     remove_helper 0 [x] k = []
     remove_helper n [x] k = [x]

     remove_helper 0 (x:xs) k = (remove_helper k xs k) 
     remove_helper n (x:xs) k = x:(remove_helper (n-1) xs k)

{-
1. Both the recrusive calls to remove_helper was missing the last argument k
2. The there were missing cases that did not write about when there is one element left
     and what to do if the counter is either 0 or not zero
-}

-- (b) remove_every_tail –  10%

remove_every_tail 0 _  = [] 
remove_every_tail n lst = remove_every_tail_helper n lst n []
  where
     remove_every_tail_helper _ [] k acc = acc
     remove_every_tail_helper 0 [x] k acc = acc
     remove_every_tail_helper n [x] k acc = (remove_every_tail_helper (n-1) [] k (acc++[x]))

     remove_every_tail_helper 0 (x:xs) k acc = (remove_every_tail_helper k xs k acc) 
     remove_every_tail_helper n (x:xs) k acc = (remove_every_tail_helper (n-1) xs k (acc++[x]))

------------------------------------------------------
{- P2  get_outof_range and count_outof_range  -}

-- (a) get_outof_range – 6%

get_outof_range v1 v2 (x:xs) = foldr (\value acc-> if value > v1 && value < v2 then value : acc else acc) [] (x:xs)

--get_outof_range v1 v2 (x:xs) = foldr (\a acc -> if a > v1 && a < v2 then a : acc else acc) [] (x:xs)


-- (b) count_outof_range – 10%

------------------------------------------------------
{- P3  find_routes - 10% -}

------------------------------------------------------
{- P4  add_lengths and add_nested_lengths -}

-- (a) add_lengths - 6%

-- (b) add_nested_lengths - 10%

------------------------------------------------------
{- P5 sum_tree and create_sumtree -}

-- (a) sum_tree - 8%

-- (b) create_sumtree - 10%

------------------------------------------------------
{- P6 list_tree - 16% -}


-- Tree examples - 4%
-- INCLUDE YOUR TREE EXAMPLES HERE

-- Assignment rules 3%