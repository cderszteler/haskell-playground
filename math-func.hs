customAbs :: Int -> Int
customAbs n = if n >= 0 then n else -n

signum :: Int -> Int
signum n
    | n>0 = 1
    | n==0 = 0
    -- | n<0 = -1

customIntSum :: [Int] -> Int
customIntSum [] = 0
customIntSum (n:ns) = n + customIntSum(ns)
{-
-- Doesn't work
customIntSum ns
    | [] = 0
    | (n:ns) = n + customIntSum(ns)
-}

addUnidiomatic :: (Int, Int) -> Int
addUnidiomatic (x,y) = x + y

addIdiomatic :: Int -> Int -> Int -- equal to Int -> (Int -> Int)
addIdiomatic x y = x + y

main = do
    print ( addIdiomatic 2 3 ) -- equal to (addIdiomatic 2) 3
    print ( addIdiomatic 2 3 )