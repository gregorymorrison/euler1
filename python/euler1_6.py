#!/usr/bin/python

class Euler1:
 pass
euler1 = Euler1()

euler1.range = 1000
euler1.solver = lambda x: sum(i for i in xrange(x) if i%3==0 or i%5==0)
euler1.result = euler1.solver(euler1.range)

print euler1.result