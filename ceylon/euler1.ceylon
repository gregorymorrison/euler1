// Euler1 in Ceylon

Integer euler1(Integer size) {
    variable Integer retval = 0;
    for (i in 1..size) {
    	if (i%3 == 0 || i%5 == 0) {
    		retval += i;
        }
    }
    return retval;
}

print ("``euler1(999)``");