#!/usr/bin/python3
# Euler1 in Python

class Euler1:
    def __init__(self, size):
        self.size = size

    def solve(self):
        self.result = 0
        for i in range(self.size):
            if i%3==0 or i%5==0:
                self.result += i


euler1 = Euler1(1000)
euler1.solve()
print ("Euler1 =", euler1.result)