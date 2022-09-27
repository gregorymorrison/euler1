# Euler1 in PARI/GP

euler(n, acc) = {
    if (n==0, return (acc));
    if (! (n%3 && n%5), return (euler(n-1, acc+n)));
    return (euler(n-1, acc));
};

euler1(size) = euler(size, 0);

print (euler1(999))
