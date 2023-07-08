#!/usr/bin/python3
# Euler1 in Python

def euler(n):
    i = 0
    while i < n:
        if i%3==0 or i%5==0:
            yield i
        i += 1

def euler1(n):
    return sum(euler(n))

print ("Euler1 =", euler1(1000))
