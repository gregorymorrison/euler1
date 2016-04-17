// Euler1 in Ceylon

Integer euler1(Integer n, Integer acc=0) {
    if (n == 0) { return acc; }
    if (n%3 == 0 || n%5 == 0) {
    	return euler(n-1, acc+n);
    } else {
    	return euler(n-1, acc);
    }
}

print ("``euler1(999)``");