-- 2)

or1 :: Bool -> Bool -> Bool
or1 False False = False
or1 _ _ = True

or2 :: Bool -> Bool -> Bool
or2 True _ = True 
or2 _ True = True
or2 False False = False

or3 :: Bool -> Bool -> Bool
or3 True True = True
or3 True False = True
or3 False True = True
or3 False False = True

-- 3)

init1 :: [a] -> [a]
init1 [x] = []
init1 (x:xs) = [x] ++ init1 xs

init2 :: [a] -> [a]
init2 x = reverse $ tail $ reverse x

-- 4)

last1 :: [a] -> a
last1 x = head $ reverse x

last2 :: [a] -> a
last2 [x] = x
last2 (x:xs) = last2 xs

last3 :: [a] -> a
last3 x = Prelude.last x

-- 5)

replicateN :: Int -> a -> [a]
replicateN i x
  | i <= -1 = []
  | i == 0 = []
  | i >= 1 = x : ( replicateN (i - 1) x )
-- replicateN 0 _ = []
-- replicateN i x = x : ( replicateN (i - 1) x ) -- replicateN i x =  ( replicateN (i - 1) x ) ++ [x]

-- 6)

concatLists :: [[a]] -> [a]
concatLists [] = []
concatLists [x] = x
concatLists (x:xs) = x ++ concatLists xs


main = do
  print (init1 [1,2,3])
  print (init2 [1,2,3])
  print (last1 [1,2,3])
  print (last2 [1,2,3])
  print (last3 [1,2,3])
  print (replicateN 4 1)
  print (concatLists [[1,2], [3,4], [1,2]])