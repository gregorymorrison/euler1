# Euler1 in R

mySum <- function (n, size) {
    n * (ceiling(size/n)**2 + ceiling(size/n)) / 2
}

euler1 <- function (size) {
    return (mySum(3,size) + mySum(5,size) - mySum(15,size))
}

euler1(999)