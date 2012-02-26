#!/usr/bin/booi 

def sum(ls):
    retval = 0
    for l in ls:
        retval += l cast int
    return retval

def euler1(n as int):
    i = 0
    while i < n:
        if i%3==0 or i%5==0:
            yield i
        i += 1

print sum(euler1(1000))