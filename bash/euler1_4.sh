#!/bin/bash
#Euler1 in bash

euler1() {
    retval=0
    
    for i in $(seq $1); do
        if [ $[$i%3] -eq 0 ] || [ $[$i%5] -eq 0 ]; then
            retval=$[ $retval+$i ]
        fi
    done

	echo $retval
}

echo "euler1 = $(euler1 999)"
