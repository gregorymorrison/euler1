# Euler1 in Python

def mySum(n, size):
	return n * (((size/n)**2 + (size/n)) / 2)

def Euler1(size):
	return mySum(3,size) + mySum(5,size) - mySum(15,size)

import datetime
start = datetime.datetime.now()
print Euler1(1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
end = datetime.datetime.now()
print start
print end
