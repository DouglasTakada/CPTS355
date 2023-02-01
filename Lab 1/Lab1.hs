-- CptS 355 - Lab 1 (Haskell) - Spring 2023
-- Name: 


module Lab1
     where


-- 1.insert

isNegative n | n < 0     = True
             | otherwise = False


insert :: (Ord t1, Num t1) => t1 -> t2 -> [t2] -> [t2]
insert 0 item [] = [item]
insert n item [] = []
insert n item (x:xs) | isNegative n = error "index cannot be negetive"
                     | (n==0) =  item : x :xs
                     | otherwise = x: (insert (n-1) item xs)
-- 
-- 2. insertEvery

insertEveryHelper :: (Eq t, Num t) => t -> a -> [a] -> t-> [a] 
insertEveryHelper 0 item [] k = [item]
insertEveryHelper n item [] k = []
insertEveryHelper n item (x:xs) k
                     | (k == 0) = item : (insertEveryHelper k item xs k)
                     | (n == 1) = x : item : (insertEveryHelper k item xs k)
                     |otherwise = x : (insertEveryHelper (n-1) item xs k)


insertEvery :: (Eq t, Num t) => t -> a -> [a] -> [a] 
insertEvery n item iL = insertEveryHelper n item iL n

-- 3. getSales

getSalesHelper :: (Num p, Eq t) => t -> [(t, p)] -> p -> p 
getSalesHelper day ((x,y),xs) sum | True = getSalesHelper day xs sum
                                 | day == x = y+ sum


storelog = [("Mon",50),("Fri",20), ("Tue",20),("Fri",10),("Wed",25),("Fri",30)]
getSales :: (Num p, Eq t) => t -> [(t, p)] -> p 
getSales day iL = getSalesHelper day iL sum
                                                  
-- 4. sumSales


-- 5. split


-- 6. nSplit

