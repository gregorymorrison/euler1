#!/bin/bash
# Euler1 in Bash

euler1(){
    # if the list is empty, return 0
    if [ $# -le 0 ]; then
        echo 0

    else
        #get the index position of the list's middle element
        pivot=$((($#-1)/2+1))

        if [ $[${!pivot} % 3] = 0 ] || [ $[${!pivot} % 5] = 0 ]; then
	        echo $(( ${!pivot} + `euler1 ${@:1:(($pivot-1))}` + `euler1 ${@:(($pivot+1))}` ))
		else
	        echo $(( 0 + `euler1 ${@:1:(($pivot-1))}` + `euler1 ${@:(($pivot+1))}` ))
		fi
    fi
}

echo $( euler1 `seq 1 999` )
