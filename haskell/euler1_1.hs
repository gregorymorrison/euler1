-- Euler1 in Haskell

-- euler1 :: (Num a) => a -> a
euler1 (a) = sum $ [3,6..a] ++ [5,20..a] ++ [10,25..a]

main :: IO ()
main = do { print (euler1 999) }