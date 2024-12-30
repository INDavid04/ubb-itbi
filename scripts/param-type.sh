#!/bin/bash

# Modificati unele din scripturile de la laborator pentru a primi datele necesare ca parametrii in linie de comanda, in loc sa fie cititie de la tastatura (e.g. scripturile care identifica tipuri de fisiere)

for filename in $@
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
done