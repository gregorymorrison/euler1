// Euler1 in Ceylon

Integer euler(Integer[] ints) {
    if (ints.empty) { return 0; }

    Integer pivot = ints.size / 2;

    Integer pivotval;
    if (exists ints[pivot]) {
        if (ints[pivot]%3 == 0 || ints[pivot]%5==0) {
            pivotval = ints[pivot];
        } else {
            pivotval = 0;
        }
    } else {
        pivotval = 0;
    }

    Integer pre;
    if (0 < pivot) {
        pre = euler( ints[0..pivot-1] );
    } else {
        pre = 0;
    }

    Integer post;
    if (pivot+1 < ints.size) {
        post = euler( ints[pivot+1..ints.size-1] );
    } else {
        post = 0;
    }

    return pre + pivotval + post;
}

Integer euler1 (Integer size) {
    return euler(1..size);
}

print ("``euler1(999)``");