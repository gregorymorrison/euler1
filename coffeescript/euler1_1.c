'Euler1 in CoffeeScript'

euler1 = (size) ->
    retval = 0

    for i in [1..size-1]
        if i % 3 is 0 or i % 5 is 0
            retval += i

    return retval

alert euler1(1000)