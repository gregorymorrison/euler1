#! /usr/bin/python

def Euler2(size):
	a, b, retval = 0, 1, 0
	while b < size:
		a, b = b, a+b
		if b % 2 == 0:
			retval += b
	return retval

print Euler2(4000000)

