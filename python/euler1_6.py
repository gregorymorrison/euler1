#!/usr/bin/python3
# Euler1 in Python

class Euler1:
    pass

euler1 = Euler1()

euler1.range = 1000
euler1.solver = lambda x: sum(i for i in range(x) if i%3==0 or i%5==0)
euler1.result = euler1.solver(euler1.range)

print ("Euler1 =", euler1.result)