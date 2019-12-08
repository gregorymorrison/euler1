-- Euler1 in Haskell

mysum :: Integer -> Integer -> Integer
mysum mul lim = foldr (+) 0 [0, mul .. lim-1]

euler1 :: Integer -> Integer
euler1 (n) = mysum 3 n + mysum 5 n - mysum 15 n

main :: IO ()
main = do
    let result = euler1 1000 
    putStrLn $ "euler1 = " ++ show result 

