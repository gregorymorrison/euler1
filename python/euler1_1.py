#!/usr/bin/python 
# Euler1 in Python

def euler1(x):
    result = 0

    for i in xrange(x):
        if i%3==0 or i%5==0:
            result += i

    return result

print euler1(1000)