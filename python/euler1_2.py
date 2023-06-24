#!/usr/bin/python3
# Euler1 in Python

def euler1(n):
    i = 0
    while i < n:
        if i%3==0 or i%5==0:
            yield i
        i += 1

print ("Euler1 =", sum(euler1(1000)))