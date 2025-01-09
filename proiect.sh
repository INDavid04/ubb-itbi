#!/bin/bash

verifica_daca_exista_broken_links() {
    # Salvam primii doi parametrii
    local director="$1"           
    local follow_symlinks="$2"
    local delete_broken_links="$3"

    # Cautarea recursiva
    for element in "$director"/*; do
        if [ -L "$element" ]; then # link simbolic
            if [ ! -e "$element" ]; then # broken link
                echo "Broken link: $element -> $(readlink "$element")"
                if [ $delete_broken_links == "--delete" ]; then
                    rm $element 
                fi
            elif [ "$follow_symlinks" = true ] && [ -d "$element" ]; then # director
                echo "Following symlink directory: $element"
                verifica_daca_exista_broken_links "$(readlink -f "$element")" "$follow_symlinks"
            fi
        elif [ -d "$element" ]; then # director
            verifica_daca_exista_broken_links "$element" "$follow_symlinks"
        fi
    done
}

main() {
    # Daca nu avem parametrii, afisam un mesaj si iesim
    if [ $# -lt 1 ]; then
        echo "Usage: $0 <director> [--follow-symlinks]"
        exit 1
    fi

    # Presupunem ca avem un singur parametru, directorul
    local director="$1"
    local follow_symlinks=false

    # Verificam daca al doilea parametru este --follow-symlinks
    if [ "$2" = "--follow-symlinks" ]; then 
        follow_symlinks=true  # urmarim symlinks
    fi

    # Daca nu exista directorul
    if [ ! -d "$director" ]; then 
        echo "Error: $director is not a directory"
        exit 1
    fi

    verifica_daca_exista_broken_links "$director" "$follow_symlinks"
}

main "$@"