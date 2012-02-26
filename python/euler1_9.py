#!/usr/bin/python 

def Euler1(L, acc=0):
    if L == []: return acc

    pivot = len(L)/2
    return (Euler1(L[:pivot], acc)
          + Euler1(L[pivot+1:], acc)
          + ((L[pivot]%3==0 or L[pivot]%5==0)  and  L[pivot]  or  0)
          + acc)

print Euler1(range(1,1000))