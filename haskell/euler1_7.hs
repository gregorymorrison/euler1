-- Euler1 in Haskell

myMap :: Int -> Int
myMap x = x

myFilter :: Int -> Bool
myFilter x = x `mod` 3 == 0 || x `mod 5 == 0

myFold :: [Int] -> Int
myFold xs = foldr (+) 0 xs

euler1 :: Int -> Int
euler1 size = fold myFold 0 (filter myFilter (map myMap [0..size]))

main :: IO ()
main = do
    let result = euler1 20 
    putStrLn $ "euler1 = " ++ show result
