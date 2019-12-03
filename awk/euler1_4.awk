#! /usr/bin/awk -f
# Euler1 in AWK

function mySum (n, size) {
	return (int(size/n)^2 + int(size/n)) * n / 2;
}

function euler(size) {
	return mySum(3, size) + mySum(5, size) - mySum(15, size);
}

BEGIN { print "euler1 = " euler(999) }
