-- Concatenating two lists (predefined as `++' in the standard prelude)

append []     ys = ys
append (x:xs) ys = x : append xs ys


-- Reverse the order of elements in a list:

rev []     = []
rev (x:xs) = append (rev xs) [x]

-- rev [1,2,3,4,5,6,7,8,9,10]