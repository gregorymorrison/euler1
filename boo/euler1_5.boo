#!/usr/bin/booi 

def sum(ls):
    retval = 0
    for l in ls:
        retval += l cast int
    return retval

euler1 = def(size): return sum(x for x in range(size) if x cast int%3==0 or x cast int%5==0)

print euler1(1000)