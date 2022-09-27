// Euler1 in Pawn

euler1(size) {
    new retval = 0
    for(new i=1; i<size; i++) {
        if (i%3 == 0 || i%5 == 0) {
            retval += i
        }
    }
    return retval
}

main()
{
   printf("%d", euler1(1000))
}
