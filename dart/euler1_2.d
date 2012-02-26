// Euler1 in Dart

List<int> _range(int lo, int hi, List<int> acc) {
    if (lo == hi) {
        return acc;
    } else {
        acc.add(lo);
        return _range(lo+1, hi, acc);
    }
}

List<int> range(int lo, int hi) {
    return _range(lo, hi, new List<int>());
}

main() {
    List<int> ints = range(0, 1000);

    List<int> mapped = new List<int>();
    ints.forEach((i) => mapped.add(i));

    List<int> filtered = mapped.filter((i) => i%3==0 || i%5==0);

    int reduced = 0;
    filtered.forEach((i) => reduced += i);

    print (reduced);
}