-- Euler1 in Curry

myMap    xs = map id xs
myFilter xs = filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) xs
myFold   xs = foldr (+) 0 xs

euler1 :: Int -> Int
euler1 n = myFold $ myFilter $ myMap [1 .. n]

main = print (euler1 (999))
