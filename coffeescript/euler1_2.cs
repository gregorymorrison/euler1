'Euler1 in CoffeeScript'

euler1 = (size) -> (i for i in [1..size-1] when i%3 is 0 or i%5 is 0).reduce (x,y) -> x+y

alert euler1(1000)