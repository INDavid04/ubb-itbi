#!/bin/bash

# Scrieti un script myfind care emuleaza comportamentul simplificat al comenzii `find` cu flagurile -name, -type si -exec. Comanda primeste ca prim parametru un director si nu functioneaza recursiv (i.e. maxdepth = 1). Trebuie sa fie capabila sa gaseasca un fisier dupa nume si/sau tip si odata identificat sa poata executa o comanda asupra lui. Numele, tipul si comanda de executie sunt furnizate ca parametrii in linia de comanda, exact ca pentru comanda `find` (`man find`)

# Verificăm dacă există suficienți parametri
if [[ $# -lt 2 ]]; then
    echo "Utilizare: $0 <director> [-name <pattern>] [-type <f|d>] [-exec <comanda>]"
    exit 1
fi

# Parametri principali
directory=$1
shift

# Inițializăm variabile pentru flaguri
name_pattern=""
type=""
exec_command=""

# Procesăm argumentele liniei de comandă
while [[ $# -gt 0 ]]; do
    case $1 in
        -name)
            name_pattern=$2
            shift 2
            ;;
        -type)
            type=$2
            shift 2
            ;;
        -exec)
            exec_command=$2
            shift 2
            ;;
        *)
            echo "Parametru necunoscut: $1"
            exit 1
            ;;
    esac
done

# Verificăm dacă directorul există
if [[ ! -d $directory ]]; then
    echo "Error: Directorul $directory nu există."
    exit 1
fi

# Iterăm prin fișierele/directoarele din director (maxdepth=1)
for file in "$directory"/*; do
    # Dacă fișierul nu există (e.g., nu sunt fișiere în director), continuăm
    [[ ! -e $file ]] && continue

    # Filtrăm după nume (dacă este specificat)
    if [[ -n $name_pattern && $(basename "$file") != $name_pattern ]]; then
        continue
    fi

    # Filtrăm după tip (dacă este specificat)
    case $type in
        f) [[ ! -f $file ]] && continue ;;  # Fișier obișnuit
        d) [[ ! -d $file ]] && continue ;;  # Director
        *) ;;
    esac

    # Afișăm fișierul/directorul găsit
    echo "Găsit: $file"

    # Executăm comanda, dacă este specificată
    if [[ -n $exec_command ]]; then
        eval "$exec_command \"$file\""
    fi
done
