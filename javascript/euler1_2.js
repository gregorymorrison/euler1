// Euler1 in JavaScript

importPackage(java.io);
importPackage(java.lang);

// Generic recursive Map, Filter, Reduce using Tail Call Optimization
// Accumulator parameter is optional and only used by recursive calls

// Map - transform each item to something else
var map = function(ls, f, acc) {
    if (typeof acc === "undefined") acc = [];
    if (ls.length == 0) {
        return acc;
    } else {
        return map(ls.slice(1,ls.length), f, [].concat(f(ls[0]), acc));
    }
};

// Filter - remove selected items
var filter = function(ls, f, acc) {
    if (typeof acc === "undefined") acc = [];
    if (ls.length == 0) {
        return acc;
    } else if (f(ls[0]) == true) {
        return filter(ls.slice(1,ls.length), f, [].concat(ls[0], acc));
    } else {
        return filter(ls.slice(1,ls.length), f, acc);
    }
};

// Reduce - calculate a value based on all items
var reduce = function(ls, f, acc) {
    if (ls.length == 0) {
        return acc;
    } else {
        return reduce(ls.slice(1,ls.length), f, f(ls[0], acc));
    }
};

// generate a list of ints
var range = function(i, acc) {
    if (typeof acc === "undefined") acc = [];
    if (i == 0) {
        return acc;
    } else {
        return range(i-1, [].concat(acc, [i]));
    }
};

// Now let's define specific versions of mapping/filtering/reducing functions
var myMap = function(ints) {
    return map(ints, function(val) { return val; });
};
var myFilter = function(ints) {
    return filter(ints,
        function(val) { if (val%3==0 || val%5==0) return true;
                        else return false; });
};
var myReduce = function(ints) {
    return reduce(ints,
        function(x, acc) { if (typeof acc === "undefined") return x;
                           else return acc+x; });
};

// Now apply everything
System.out.println( myReduce(myFilter(myMap( range(999) ))) );