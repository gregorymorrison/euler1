#!/usr/bin/python

euler1 = dict()

euler1[range] = 1000

solver = lambda x: sum(i for i in xrange(x) if i%3==0 or i%5==0)
euler1[solver] = solver

result = euler1[solver] (euler1[range])
euler1[result] = result

print euler1[result]