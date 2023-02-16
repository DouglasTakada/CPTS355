-- CptS 355 - Lab 2 (Haskell) - Spring 2023
-- Name: 
-- Collaborated with: 

module Lab2
     where


-- 1
{- (a) merge2 -}

merge2 :: [a] -> [a] -> [a]
merge2 x [] = x
merge2 [] x = x
merge2 (x:xs) (y:ys) = x:y:merge2 xs ys
                      

{- (b) merge2Tail -}

merge2Tail :: [a] -> [a] -> [a]
merge2Tail x y = merge2TailHelper x y []
     where
          merge2TailHelper x [] acc = reverse(acc)
          merge2TailHelper [] x  acc = reverse(acc)
          merge2TailHelper (x:xs) (y:ys) acc = merge2TailHelper xs ys (y:x:acc)

{- (c) mergeN -}

mergeN:: [[a]] -> [a]
mergeN xs = foldl merge2 [] xs


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






