#!/bin/bash

echo -n "Please input a filename: "
while read filename
do
    longformat=`ls -ld $filename 2> /dev/null`
    case "${longformat:0:1}" in
        -)
            echo "$filename is a regular file"
            ;;
        d)
            echo "$filename is a directory"
            ;;
        b)
            echo "$filename is a block file"
            ;;
        c) 
            echo "$filename is a character file"
            ;;
        *) 
            echo "Sorry, I don't know anything about $filename"
            ;;
    esac
    echo -n "Please input a filename (CTR+C to escape): "
done