// Euler1 in Ceylon

Integer euler1(Integer size) {
    return [for (i in 1..size) if (i%3==0 || i%5==0) i].fold(0, plus<Integer>);
}

print ("``euler1(999)``");
