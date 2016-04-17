// Euler1 in Ceylon

Integer mysum (Integer n, Integer size) {
    return ((size/n)^2 + size/n) * n / 2;
}

Integer euler1(Integer size) {
	return mysum(3,size) + mysum(5,size) - mysum(15,size);
}

print ("``euler1(999)``");