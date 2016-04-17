// Euler1 in Ceylon

Integer euler1(Integer size) {
    Iterable<Integer> ints = (1..size);
    return ints
        .map((Integer i) => i)
        .filter((Integer i) => i%3==0 || i%5==0);
        .fold(0, plus<Integer>);
}

print ("``euler1(999)``");