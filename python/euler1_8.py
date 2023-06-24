#!/usr/bin/python3
# Euler1 in Python

import sys

sys.setrecursionlimit(1500) # Set the maximum recursion depth to 1500

def euler1(n, acc=0):
    if n==1: return acc

    if n%3==0 or n%5==0:
        return euler1(n-1, acc+n)
    else:
        return euler1(n-1, acc)

print ("Euler1 =", euler1(999))
