# Euler1 in R

#Set recursion limit
options(expressions = 10000)

myInt <- function(n) ifelse (n%%3 == 0 || n%%5 == 0, n, 0)

euler <- function(n, acc) {
    ifelse (n == 0,
        acc,
        euler(n-1, myInt(n)+acc))
}

euler1 <- function(n) euler(n, 0)

euler1(999)
