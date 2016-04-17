-- Euler1 in Curry

mod_3_5 :: Int -> Int
mod_3_5 n 
    | n `mod` 3 == 0 = n 
    | n `mod` 5 == 0 = n 
    | otherwise      = 0

euler1 :: Int -> Int
euler1 n = euler n 0
    where euler n acc
	    | n == 0    = acc
		| otherwise = euler (n-1) (acc + mod_3_5 n)

main = print (euler1 999)
