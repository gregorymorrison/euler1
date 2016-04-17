// Euler1 in Kaya
program euler1;

Int euler1(Int size) {
    retval = 0;
    for i in [1..size] {
        if (i%3==0 || i%5==0) {
            retval += i;
        }
    }
    return retval;
}

Void main() {
    putStrLn( string(euler1(999)) );
}