-- CptS 355 - Lab 1 (Haskell) - Spring 2023
-- Name: 


module Lab1
     where


-- 1.insert

insert :: (Ord t1, Num t1) => t1 -> t2 -> [t2] -> [t2]
insert t1 t2 [] = []
insert n item iL
     | t1 > length iL = error "index out of bounds"
     | t1 == 0 = item : iL
     | otherwise = newL ++ insert n-1 item iL

-- 2. insertEvery


-- 3. getSales

                                                  
-- 4. sumSales


-- 5. split


-- 6. nSplit

