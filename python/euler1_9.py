#!/usr/bin/python3
# Euler1 in Python

def euler1(L):
    if len(L) == 0: return 0

    # calculate the index at which the list should be divided into two sublists
    pivot = round(len(L)/2)
    # call the function recursively with a sublist of the left half of the original list
    pre = euler1(L[:pivot])
    # call the function recursively with a sublist of the right half of the original list
    post = euler1(L[pivot+1:])
    # check if the number at the pivot index is a multiple of 3 or 5
    # and save the result in val variable
    val = ((L[pivot]%3==0 or L[pivot]%5==0)  and  L[pivot]  or  0)

    # return the sum of the left sublist, val and the right sublist.
    return pre + val + post

print ("Euler1 =", euler1(range(1,1000)))
