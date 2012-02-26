-- Euler1 in Haskell

mySum [] = 0
mySum (x:xs) = x + mySum xs

result = mySum [x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]

main = do print result