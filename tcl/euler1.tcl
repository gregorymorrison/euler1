#!/usr/bin/tclsh
# Euler1 in Tcl

proc euler1 {n} {
    set sum 0; set i 0 

    while {$i < $n} {
        if {$i%3==0 || $i%5==0} {
            set sum [expr $sum+$i]
        }
        incr i
    }

    return $sum
}

puts [euler1 1000]