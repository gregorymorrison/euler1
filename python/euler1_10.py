# Euler1 in Python

def mySum(n, size):
    return n * (((size/n)**2 + (size/n)) / 2)

def Euler1(size):
    return mySum(3,size) + mySum(5,size) - mySum(15,size)

print Euler1(999)