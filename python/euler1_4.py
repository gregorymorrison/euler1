#!/usr/bin/python3
# Euler1 in Python

from functools import reduce

myMap = lambda size: map(lambda x: x, range(size))
myFilter = lambda ints: filter(lambda x: x%3==0 or x%5==0, ints)
myReduce = lambda filtered: reduce(lambda x,y: x+y, filtered)

print ("Euler1 =", myReduce(myFilter(myMap(1000))))