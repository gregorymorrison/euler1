-- Euler1 in Haskell

myMap :: [Int] -> [Int]
myMap = map (\x -> x)

myFilter :: [Int] -> [Int]
myFilter = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)

myFold :: [Int] -> Int
myFold = sum

euler :: [Int] -> Int
euler = myFold . myFilter . myMap

euler1 :: Int -> Int
euler1 size = euler [1..size]

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result
