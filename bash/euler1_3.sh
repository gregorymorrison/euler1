#!/bin/bash
# Euler1 in Bash

euler1(){
    # if the list is empty, return 0
    if [ $# -le 0 ]; then
        echo 0

    else
        #get the index position of the list's middle element
        pivot=$((($#-1) / 2 + 1))
        pre=`euler1 ${@:1:(($pivot - 1))}`
        post=`euler1 ${@:(($pivot + 1))}`
        i=0
        if [ $[${!pivot} % 3] = 0 ] || [ $[${!pivot} % 5] = 0 ]; then
            i=${!pivot}
        fi
        echo $(( $pre + $i + $post ))
    fi
}

echo "euler1 = $( euler1 `seq 1 999` )"
