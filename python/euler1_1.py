#!/usr/bin/python3
# Euler1 in Python

from math import floor;

def mySum(n, size):
	return n * ((floor(size/n)**2 + floor(size/n)) / 2)

def euler1(size):
	return floor(mySum(3,size) + mySum(5,size) - mySum(15,size))

print ("Euler1 =", euler1(999))
