-- Euler1 in Curry

myMap xs    = map id xs
myFilter xs = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)
myFold xs   = foldr (+) 0 xs

euler1 :: Int -> Int
euler1 n = euler [myMap,myFilter,myFold] [1..n]
    where euler []     x  = x
		  euler (f:fs) xs = euler1 fs (f xs)

main = print (euler1 999)

