#!/usr/bin/squirrel
// Euler1 in Squirrel

// a class with a constructor
class Euler1 {
    constructor(n) {
        size = n
    }
    size = null
    result = 0
}

// dynamically extend the class at runtime
function Euler1::solve() {
    for (local i = 0; i < size; i += 1) {
        if (i%3 == 0 || i%5 == 0)
            result += i;
    }
}

local euler = Euler1(1000)
euler.solve()
print ( "Euler1 = " + euler.result + "\n" )
