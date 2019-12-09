-- Euler1 in Haskell

import Debug.Trace

debug = flip trace

slice :: [Int] -> Int -> Int -> [Int]
slice xs from to = do
    let result = drop from $ take to xs `debug` ("slice: " ++ show xs ++ ", " ++ show from ++ ", " ++ show to)
    result                              `debug` ("sliced: " ++ show result)

euler :: [Int] -> Int
euler xs =
    if length xs == 0
        then 0 `debug` ("returning 0")
        else do
            let pivot = (length xs) `div` 2
            let pre  = euler [(head xs)..pivot]
            let post = euler (slice xs (pivot+1) (length xs))
            let pivotval = xs !! pivot
            if pivotval `mod` 3 == 0 || pivotval `mod` 5 == 0
                then pre + pivotval + post
                else pre + post

euler1 :: Int -> Int
euler1 n = euler [1..n]

main :: IO ()
main = do
    let result = euler1 999 
    putStrLn $ "euler1 = " ++ show result

