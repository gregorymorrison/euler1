// Euler1 in JavaScript

importPackage(java.io);
importPackage(java.lang);

// new object instance
var euler1 = {};

// dynamically add new properties and behaviors to object
euler1.range = 1000;
euler1.solver = function(x){
    var i, result;
    result = 0;

    for (i=0; i<x; i++) {
        if (i%3==0 || i%5==0) {
            result += i;
        }
    }
    return result;
}
euler1.result = euler1.solver(euler1.range);

System.out.println(euler1.result);