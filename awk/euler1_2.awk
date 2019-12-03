#! /usr/bin/awk -f
# Euler1 in AWK

function euler(n) {
	sum = 0
	for (i = 1; i < n; i++) {
		if (i%3==0 || i%5==0) {
			sum += i;
		}
	}
	return sum
}

{ print "euler1 = " euler(1000) }
