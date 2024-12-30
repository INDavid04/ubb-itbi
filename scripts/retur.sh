#!/bin/bash

read cmd
eval "$cmd" 2> /dev/null
if [ "$?" -ne "0" ]; then
    echo "$cmd has failed!"
fi