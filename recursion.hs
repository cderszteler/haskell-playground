extend :: Int -> a -> [a] -> [a]
extend 0 m xs = xs
extend n m xs = extend (n-1) m (xs ++ [m])

main = do
  print (extend 3 2 [1,2,3,4])