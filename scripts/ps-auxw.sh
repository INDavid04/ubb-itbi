#!/bin/bash

# 4. Scrieti un script care foloseste o comanda de tip pipeline pentru a afisa utilizatorii si PID-urile proceselor lor asa cum sunt afisate de comanda `ps auxw`. Scriptul trebuie sa captureze intr-un pipe outputul comenzii `ps auxw` si sa itereze prin fiecare linie tiparind primele doua campuri ale outputului, cele care corespund utilizatorului si PID-ului.

ps auxw | while read -r line; do
    # Extragem utilizatorul (primul câmp) și PID-ul (al doilea câmp)
    user=$(echo "$line" | awk '{print $1}')
    pid=$(echo "$line" | awk '{print $2}')

    # Ignorăm linia de antet
    if [[ $user != "USER" ]]; then
        echo "User: $user, PID: $pid"
    fi
done