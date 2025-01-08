#!/bin/bash

verifica_daca_exista_broken_links() {
    local director="$1"           
    local follow_symlinks="$2"

    for element in "$director"/*; do
        if [ -L "$element" ]; then # link simbolic
            if [ ! -e "$element" ]; then # broken link
                echo "Broken link: $element -> $(readlink "$element")"
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
    if [ $# -lt 1 ]; then # nu avem parametrii
        echo "Usage: $0 <director> [--follow-symlinks]"
        exit 1
    fi

    local director="$1"
    local follow_symlinks=false

    if [ "$2" = "--follow-symlinks" ]; then # verificam daca al doilea parametru este --follow-symlinks
        follow_symlinks=true  # urmarim symlinks
    fi

    if [ ! -d "$director" ]; then # daca nu exista directorul
        echo "Error: $director is not a directory"
        exit 1
    fi

    verifica_daca_exista_broken_links "$director" "$follow_symlinks"
}

main "$@"