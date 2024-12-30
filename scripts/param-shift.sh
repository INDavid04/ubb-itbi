#!/bin/bash

while [ "$#" -gt "0" ]
do
    echo "\$1 (first parameter) is $1"
    shift
    # echo "shift executed"
done