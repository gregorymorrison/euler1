#!/usr/bin/python3
# Euler1 in Python

def euler1(size):
    return sum(range(3, size, 3)) \
        + sum(range(5, size, 5)) \
        - sum(range(15, size, 15))

print ("Euler1 =", euler1(1000))