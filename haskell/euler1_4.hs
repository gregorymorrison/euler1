-- Euler1 in Haskell

mysum :: Integer -> Integer -> Integer 
mysum mul lim = ((lim `div` mul)^2 + (lim `div` mul)) * mul `div` 2

euler1 :: Integer -> Integer
euler1 n = mysum 3 n + mysum 5 n - mysum 15 n

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result

