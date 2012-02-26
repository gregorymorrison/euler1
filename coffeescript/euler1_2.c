'Euler1 in CoffeeScript'

euler1 = (n) ->
    if n is 0
        0
    else if n % 3 is 0 or n % 5 is 0
        n + euler1(n-1)
    else
        euler1(n-1)

alert euler1(999)