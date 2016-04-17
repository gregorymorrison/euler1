-- a simple example for encapsulated search:

append []     ys = ys
append (x:xs) ys = x : append xs ys

main = do { findall (\(l1,l2) -> append l1 l2 =:= [0,1]) }