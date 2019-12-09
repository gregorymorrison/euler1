-- Euler1 in Haskell

euler :: Integer -> Integer -> Integer
euler n acc
    | n == 0                           = acc
    | n `mod` 3 == 0 || n `mod` 5 == 0 = euler (n-1) (acc+n)
    | otherwise                        = euler (n-1) (acc)

euler1 :: Integer -> Integer
euler1 n = euler n 0 

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result

