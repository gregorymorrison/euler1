// Euler1 in Pike

int euler1 (int size) {
    int retval = 0;
    for (int i = 1; i < size; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            retval += i;
        }
    }
    return retval;
}

int main() {
    int euler = euler1(1000);
    write (euler + "\n");
    return 0;
}
