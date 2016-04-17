-- Euler1 in Curry

-- write an integer:
putInt n = if n<0 then putChar '-' >> putInt (-n) else 
           if n<=9 then putChar(chr(ord '0' + n))
                   else putInt (n `div` 10) >>
                        putChar(chr(ord '0' + n `mod` 10))

mysum :: Int -> Int -> Int
mySum n size = int (n * (floor(size/n)^2 + floor(size/n)) / 2);

euler1 :: Int -> Int
euler1 n = mysum 3 n + mysum 5 n - mysum 15 n

main = putInt (euler1 1000) >> putChar '\n'