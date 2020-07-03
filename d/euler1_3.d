// Euler1 in C

import std.stdio : writeln;
import core.stdc.stdlib : malloc, free;

int *slice(int start, int end) {
    int *ints = cast(int*)malloc(size_t(end-start));
    for (int i = start; i < end; i++) {
        ints[i-start] = i;
    }
    return ints;
}

int euler(int *ints, int size) {
    if (size == 0) {
        return 0;
    }

    int pivot = size / 2;
    int pivotVal = (ints[pivot]%3 == 0 || ints[pivot]%5 == 0) ? ints[pivot] : 0;

    int pre = 0;
    if (ints[pivot]-ints[0] > 0) {
        int *preInts = slice(ints[0], ints[pivot]);
        int preSize = ints[pivot] - ints[0];
        pre = euler(preInts, preSize);
        free(preInts);
    }

    int post = 0;
    if (ints[size-1] - ints[pivot] > 0) {
        int *postInts = slice(ints[pivot]+1, ints[size-1]+1);
        int postSize = (ints[size-1]+1) - (ints[pivot]+1);
        post = euler(postInts, postSize);
        free(postInts);
    }

    return pre + pivotVal + post;
}

int euler1(int size) {
    int *ints = slice(0, size);
    int sum = euler(ints, size);
    free(ints);
    return sum;
}

int main() {
    writeln("Euler1 = ", euler1(1000), "\n");
    return 0;
}
