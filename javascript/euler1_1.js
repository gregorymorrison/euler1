// Euler1 in JavaScript

importPackage(java.io);
importPackage(java.lang);

function euler1(x) {
    var i, result;
    result = 0;

    for (i=0; i<x; i++) {
        if (i%3==0 || i%5==0) {
            result += i;
        }
    }
    return result;
}

System.out.println (euler1 (1000));