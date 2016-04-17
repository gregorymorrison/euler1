-- a simple example for encapsulated search:

append []     ys = ys
append (x:xs) ys = x : append xs ys

-- compute all solutions to equation  append [0] l = [0,1,2]:
g1 = findall (\l -> append [0] l =:= [0,1,2])

-- compute the list of all splittings of the list [0,1]:
g2 = findall (\(l1,l2) -> append l1 l2 =:= [0,1])

-- g2