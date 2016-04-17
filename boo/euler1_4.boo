#!/usr/bin/booi 

myMap = def(size as int): return [x for x in range(size)]
myFilter = def(ints): return [x for x in ints if x cast int%3==0 or x cast int%5==0]
def myReduce(ls):
    retval = 0
    for l in ls:
        retval += l cast int
    return retval

print myReduce(myFilter(myMap(1000)))