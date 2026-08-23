anonymousAdd = \x -> x ++ x

duplicate n = map (\x -> x + x) [1..n]

main = do
    print ( anonymousAdd $ show 43 )
    print ( anonymousAdd "test" )
    print ( duplicate 10 )