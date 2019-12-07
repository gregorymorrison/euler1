#!/bin/bash
#Euler1 in bash

euler1() {
    ints=("$@")

    # if the list is empty, return 0
    len=${#ints[@]}
    if [ $len -le 0 ]; then
        echo 0

    else
        #get the index position of the list
        pivot=$[ ($len-1)/2 ]

        thisVal=${ints[$pivot]}
        if [ $[$thisVal%3] -gt 0 ] && [ $[$thisVal%5] -gt 0 ]; then
            thisVal=0
        fi

        #recursively process the half of the list below the middle element
        intsPre=${ints[@]:0:(($pivot))}
        pre=$( euler1 $intsPre )
        #recursively process the half of the list above the middle element
        intsPost=${ints[@]:(($pivot)+1)}
        post=$( euler1 $intsPost )

        echo $[ $pre+$thisVal+$post ]
    fi
}

echo "euler1 = $( euler1 `seq 1 999` )"
