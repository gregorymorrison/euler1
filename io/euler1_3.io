// Euler1 in IO

euler := method(n, acc,
    if (n == 1, return acc)

    if (n%3==0 or n%5==0,
        euler(n-1, acc+n),
        euler(n-1, acc))
)
euler1 := method(n,
    euler(n, 0))

euler1(999) println