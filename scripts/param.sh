#!/bin/bash

# Daca rulam param.sh cu parametrii
# `./param.sh 1 2 3 4`
echo "I was called with $# parameters" # 0
echo "My name is $0" # ./param.sh
echo "My nicer name is 'basename $0'" # 'basename ./param.sh'
echo "My first parameter is $1" # 1
echo "My second parameter is $2" # 2
echo "All parameters are $@" # 1 2 3 4