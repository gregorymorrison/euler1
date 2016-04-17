-- Euler1 in Curry

mysum :: Int -> Int -> Int
mysum mul lim = foldr (+) 0 [0, mul .. lim-1]

euler1 :: Int -> Int
euler1 n = mysum 3 n + mysum 5 n - mysum 15 n

main = print (euler1 999)
