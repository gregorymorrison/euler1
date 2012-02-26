#!/usr/bin/python 

def Euler1(n, acc=0):
    if n==1: return acc

    if n%3==0 or n%5==0:
        return Euler1(n-1, acc+n)
    else:
        return Euler1(n-1, acc)

print Euler1(999)