#!/usr/bin/booi 

class Euler1:
    [Property(Size)]
    _size as int

    [Getter(Result)]
    _result = 0

    def solve():
        for i in range(_size):
            if i%3==0 or i%5==0:
                _result += i

euler1 = Euler1(Size:1000)
euler1.solve()
print euler1.Result