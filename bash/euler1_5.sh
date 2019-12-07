#!/bin/bash
#Euler1 in bash

mySum() {
    echo "(($2/$1) * (($2/$1)+1) * $1 / 2)"
}

euler1() {
    echo $[ $(mySum 3 $1) + $(mySum 5 $1) - $(mySum 15 $1) ]
}

echo "euler1 = $(euler1 999)"
