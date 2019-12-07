#!/bin/bash
#Euler1 in bash

euler1() {
    if [[ $1 -eq 0 ]]; then
		echo "$2"
	elif [[ $(($1%3)) -eq 0 ]] || [[ $(($1%5)) -eq 0 ]]; then
		echo $(( $(euler1 $(($1-1)) $(($2+$1)) ) ))
	else	
		echo $(( $(euler1 $(($1-1)) $(($2   )) ) ))
	fi
}

echo "euler1 = $(euler1 800 0)"
