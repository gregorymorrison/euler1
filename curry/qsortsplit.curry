-- quicksort using a split function (demonstrating where-clauses):

split _ [] = ([],[])
split e (x:xs) | e>=x = (x:l,r)
               | e<x  = (l,x:r)
               where (l,r) = split e xs

qsort []     = []
qsort (x:xs) = qsort l ++ (x:qsort r)  where (l,r) = split x xs

-- qsort [2,3,5,4,1,0]