#!/usr/bin/python

euler1 = lambda x: sum(i for i in xrange(x) if i%3==0 or i%5==0)

print euler1(1000)