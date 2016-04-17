# Euler1 in R

#Set recursion limit
options(expressions = 150)

euler1 <- function (L) {
    len = length(L)
    piv = ceiling(len / 2)
    l = L[piv]

    pre = ifelse( 1 <= piv-1, euler1( na.omit(L[1:piv-1]) ), 0)
    post = ifelse( piv+1 <= len, euler1( na.omit(L[piv+1:len])), 0 )
    i = ifelse( l%%3==0 || l%%5==0, l, 0 )

    pre + post + i
}

euler1( 1:999 )