# Euler1 in R

myMap    <- function(n) n
myFilter <- function(n) ifelse(n%%3 == 0 || n%%5 == 0, n, 0)
myReduce <- function(m,n) m+n

euler1 <- function(n) {
    mapped   = Map(myMap, 1:n)
    filtered = Filter(myFilter, mapped)
    Reduce(myReduce, filtered)
}

euler1(999)