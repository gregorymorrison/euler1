'Euler1 in CoffeeScript'

myMap = (size) -> i for i in [1..size]
myFilter = (ints) -> i for i in ints when i % 3 is 0 or i % 5 is 0
myReduce = (ints) -> ints.reduce (x,y) -> x+y

alert myReduce(myFilter(myMap(999)))