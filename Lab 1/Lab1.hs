-- CptS 355 - Lab 1 (Haskell) - Spring 2023
-- Name: 


module Lab1
     where


-- 1.insert

insert n item [] = []
--insert :: (Num t1, Eq t1) => t1 -> t2 -> [t2] -> [t2]
insert n item (x: xs)
                    | n == 0 = item : (insert (n-1) item xs)
                    | otherwise x : (insert (n-1) item xs)

-- numbers2Sum [] n = []
-- numbers2Sum  (x:xs) n | (n-x) < 0 = []
--                       | otherwise = x: (numbers2Sum xs (n-x))


-- 2. insertEvery


-- 3. getSales

                                                  
-- 4. sumSales


-- 5. split


-- 6. nSplit

