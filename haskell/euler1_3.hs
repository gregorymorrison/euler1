-- Euler1 in Haskell

mySum [] = 0
mySum (x:xs) = x + mySum xs

euler1 (n) = mySum [x | x <- [0..n], x `mod` 3 == 0 || x `mod` 5 == 0]

main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result

