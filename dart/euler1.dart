// Euler1 in Dart

int euler1(int size) {
   var retval = 0;

   for(int i=1; i<size; i++)
     if (i%3==0 || i%5==0)
            retval += i;

   return retval ;
}

main() {
    print(euler1(1000));
}