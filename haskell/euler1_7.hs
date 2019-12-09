-- Euler1 in Haskell

myMap :: Int -> Int
myMap x = x

myFilter :: Int -> Bool
myFilter x = x `mod` 3 == 0 || x `mod` 5 == 0

myFold :: Int -> Int -> Int
myFold x y = x + y

euler1 :: Int -> Int
euler1 size = foldr myFold 0 (filter myFilter (map myMap [1..size]))

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result
