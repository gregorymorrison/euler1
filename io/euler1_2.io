// Euler1 in IO

Euler1 := Object clone
Euler1 solution := 0
Euler1 solve := method(n,
    for(i, 1, n-1,
        if ((i%3==0 or i%5==0),
            (solution = solution + i))))

euler1 := Euler1 clone
euler1 solve(1000)

euler1 solution println