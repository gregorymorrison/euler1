-- Euler1 in Haskell

euler1 :: Integer -> Integer
euler1 a = sum $ [3,6..a] ++ [5,20..a] ++ [10,25..a]

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result 

