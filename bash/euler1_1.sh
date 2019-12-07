#!/bin/bash
# Euler1 in Bash

euler1(){
    # if the list is empty, return 0
    if [ $# -le 0 ]; then
        echo 0

    else
        #get the index position of the list's middle element
        pivot=$(( ($#-1) / 2 + 1 ))

        #calculate a value for the middle element
        thisVal=${!pivot}
        if [ $[$thisVal%3] -gt 0 ] && [ $[$thisVal%5] -gt 0 ]; then
            thisVal=0
        fi

        #recursively process the half of the list below the middle element
        pre=`euler1 ${@:1:(($pivot-1))}`
        #recursively process the half of the list above the middle element
        post=`euler1 ${@:(($pivot+1))}`
        
        #return thisVal + the results from the first and last halves
        echo $(( $thisVal + $pre + $post ))
    fi
}

echo "euler1 = $( euler1 `seq 1 999` )"
