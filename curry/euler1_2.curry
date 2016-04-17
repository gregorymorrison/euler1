-- Euler1 in Curry
import Float

mysum :: Int -> Int -> Int
mysum n size = (truncateFloat(floatFromInt(size `div` n)^2) + (size `div` n)) * n `div` 2 
 
euler1 :: Int -> Int
euler1 n = mysum 3 n + mysum 5 n - mysum 15 n

main = print (euler1 999)
