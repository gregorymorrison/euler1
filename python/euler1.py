#!/usr/bin/python3
# Euler1 in Python

def euler1(x):
	return sum(i for i in range(x) if i%3==0 or i%5==0)

print ("Euler1 =", euler1(1000))
