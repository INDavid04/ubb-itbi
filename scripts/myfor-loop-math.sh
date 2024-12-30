#!/bin/bash

# for i in *
# trece prin toate fisierele din direcotrul curent, in acest caz daca afisam $i, ar trebui sa vedem toate denumirile scripturilor de pana acum

# \* afiseaza *
# * afiseaza toate fisierele

# Pentru a afisa toate fisierele separate prin spatiu
# for i in \*
# do
#     echo Valoarea lui i este $i # aici trebuie neaparat fara ghilimele ("")
# done 

# Pentru a afisa toate fisierele separate unele sub altele
# for i in *
# do
#     echo Valoarea lui i este $i # aici NU trebuie neaparat fara ghilimele ("")
# done 

for i in math 1.5 * 2 done # afisam math, dupa 1.5, toate fisirele din directorul curent, 2 si done
do
    echo "Valoarea lui i este $i"
done