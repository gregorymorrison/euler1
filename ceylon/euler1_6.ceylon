// Euler1 in Ceylon

Integer euler(Integer[] ints, Integer acc) {
    if (nonempty ints) {
        Integer n = ints.first%3 == 0 || ints.first%5 == 0 then ints.first else 0;
        return euler(ints.rest, acc+n);
    } else {
        return acc;
    }
}

Integer euler1(Integer size) {
    return euler(1..size, 0);
}

print ("``euler1(999)``");