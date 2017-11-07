#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source <(curl -s "https://raw.githubusercontent.com/nicholasadamou/bash-utils/master/utils.sh")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_symlinks() {

    declare -a FILES_TO_SYMLINK=(
        "vim"
        "vimrc"
    )

    local i=""
    local fileName=""
    local sourceFile=""
    local targetFile=""

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    
    for i in "${FILES_TO_SYMLINK[@]}"; do

        sourceFile="$(pwd)/$i"
        targetFile="$HOME/.$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

        if [ ! -e "$targetFile" ]; then

            execute \
                "sudo ln -fs $sourceFile $targetFile" \
                "$targetFile → $sourceFile"
        
        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            print_success "$targetFile → $sourceFile"
        else
            ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
            if answer_is_yes; then

                rm -rf "$targetFile"

                execute \
                    "ln -fs $sourceFile $targetFile" \
                    "$targetFile → $sourceFile"

            else
                print_error "$targetFile → $sourceFile"
            fi
        fi
    done
}

main() {
    print_in_purple "\n • Create VIM symbolic links\n\n"

	create_symlinks
}

main