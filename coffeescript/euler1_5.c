'Euler1 in CoffeeScript';
var myFilter, myMap, myReduce;

myMap = function(size) {
  var i, _results;
  _results = [];
  for (i = 1; 1 <= size ? i <= size : i >= size; 1 <= size ? i++ : i--) {
    _results.push(i);
  }
  return _results;
};

myFilter = function(ints) {
  var i, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = ints.length; _i < _len; _i++) {
    i = ints[_i];
    if (i % 3 === 0 || i % 5 === 0) _results.push(i);
  }
  return _results;
};

myReduce = function(ints) {
  return ints.reduce(function(x, y) {
    return x + y;
  });
};

alert(myReduce(myFilter(myMap(999))));