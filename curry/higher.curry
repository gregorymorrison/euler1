-- apply a function to all list elements (predefined as `map'):
map_ _ []      = []
map_ f (x:xs)  = f x : map_ f xs

-- accumulate all list elements (predefined as `foldr'):
foldr_ _ z []     = z
foldr_ f z (h:t)  = f h (foldr_ f z t)

inc x = x+1   -- increment function

goal1 = map inc [0,2,1]         -- increment list elements
goal2 = map (+ 1) [0,2,1]       -- increment list elements
goal3 = foldr (+) 0 [1,0,2]     -- sum of all list elements
goal4 = foldr (*) 1 [1,2,3,4,5] -- product of all list elements

-- foldr (*) 1 [1,2,3,4,5]

