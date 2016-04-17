-- quicksort using higher-order functions:

-- filter elements in a list (predefined as `filter'):
filter_ :: (a -> Bool) -> [a] -> [a]
filter_ _ []     = []
filter_ p (x:xs) = if p x then x : filter_ p xs
                          else filter_ p xs

qsort :: [Int] -> [Int]
qsort []     = []
qsort (x:l)  = qsort (filter (< x) l) ++ x : qsort (filter (>= x) l)

-- qsort [2,3,5,4,1,0]