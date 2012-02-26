#!/usr/bin/booi 
# Euler1 in Boo

def euler1(x as int):
    result = 0

    for i in range(x):
        if i%3==0 or i%5==0:
            result += i

    return result

print euler1(1000)