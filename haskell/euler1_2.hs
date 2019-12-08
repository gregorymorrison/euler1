-- Euler1 in Haskell

euler1 :: Integer -> Integer
euler1 n = foldr (+) 0 [x | x <- [0..n], x `mod` 3 == 0 || x `mod` 5 == 0]

main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result 

