#!/usr/bin/pike
// Euler1 in Pike

array(int) myrange(int size) {
    array(int) ints = allocate(size);
    for (int i=0; i<size; i++) {
        ints[i] = i+1;
    }
    return ints;
}

int euler(array(int) ints) {
    if (sizeof(ints) == 0) return 0;

    int pivot = sizeof(ints) / 2;

    int pivotval = ints[pivot];
    if (pivotval % 3 > 0  &&  pivotval % 5 > 0)
        pivotval = 0;
    
    int pre = 0;
    if (0 < pivot)
        pre = euler( ints[0..pivot-1] );
    
    int post = 0;
    if (pivot+1 < sizeof(ints))
        post = euler( ints[pivot+1..sizeof(ints)-1] );

    return pre + pivotval + post;
}

int euler1 (int size) {
    return euler( myrange(size) );
}

int main () {
    write (euler1(999) + "\n");
    return 0;
}
