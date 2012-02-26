#!/usr/bin/python

myMap = lambda size: map(lambda x: x, xrange(size))
myFilter = lambda ints: filter(lambda x: x%3==0 or x%5==0, ints)
myReduce = lambda filtered: reduce(lambda x,y: x+y, filtered)

print myReduce(myFilter(myMap(1000)))