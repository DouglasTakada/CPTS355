-- CptS 355 - Lab 2 (Haskell) - Spring 2023
-- Name: 
-- Collaborated with: 

module Lab2
     where


-- 1
{- (a) merge2 -}

merge2 :: [a] -> [a] -> [a]
merge2 [] [] = []
merge2 x [] = x
merge2 [] x = x
merge2 x y = merge2_helper x y 0
     where
          merge2_helper x [] _ = x
          merge2_helper [] y _ = y
          merge2_helper [x] (y:ys) counter | (counter == 0) = x : y : ys
                                           | otherwise = y : merge2_helper x ys (counter - 1)
          merge2_helper (x:xs) [y] counter | (counter == 0) = x : merge2_helper xs y (counter + 1)
                                           | otherwise = y : x : xs
          merge2_helper (x:xs) (y:ys) counter | (counter == 0) = x : merge2_helper xs (y:ys) (counter + 1)
                                              | otherwise = y : merge2_helper (x:xs) ys (counter - 1)



                         

{- (b) merge2Tail -}




{- (c) mergeN -}




-- 2
{- (a) count -}




{- (b) histogram  -}




-- 3                
{- (a) concatAll -}




{- (b) concat2Either -}               
-- data AnEither  = AString String | AnInt Int
--                 deriving (Show, Read, Eq)




-- 4      
{-  concat2Str -}               




-- data Op = Add | Sub | Mul | Pow
--           deriving (Show, Read, Eq)

-- evaluate:: Op -> Int -> Int -> Int
-- evaluate Add x y =  x+y
-- evaluate Sub   x y =  x-y
-- evaluate Mul x y =  x*y
-- evaluate Pow x y = x^y

-- data ExprTree a = ELEAF a | ENODE Op (ExprTree a) (ExprTree a)
--                   deriving (Show, Read, Eq)

-- 5 
{- evaluateTree -}



-- 6
{- printInfix -}



--7
{- createRTree -}
-- data ResultTree a  = RLEAF a | RNODE a (ResultTree a) (ResultTree a)
--                      deriving (Show, Read, Eq)






