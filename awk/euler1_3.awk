#! /usr/bin/awk -f
# Euler1 in AWK

function euler(n, acc) {
	if (n == 1) {
		return acc;
	} else if (n%3==0 || n%5==0) {
		return euler(n-1, acc+n);
	} else {
		return euler(n-1, acc);
	}
}

function euler1(n) {
	return euler(n, 0);
}

BEGIN { print "euler1 = " euler1(999) }
