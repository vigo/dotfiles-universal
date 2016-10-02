#!/usr/bin/env bash

set -e

unlink_files_list=(
    "$HOME/.profile"
    "$HOME/.bashrc"
    "$HOME/.inputrc"
    "$HOME/.screenrc"
    "$HOME/.ackrc"
    "$HOME/.irbrc"
    "$HOME/.pryrc"
    "$HOME/.nanorc"
    "$HOME/.gemrc"
)

unlink_dotfiles() {
    echo "This will remove Dotfiles linkings... Are you sure ? (Y/n)"
    read ARE_YOU_SURE
    if [[ $ARE_YOU_SURE == 'n' || $ARE_YOU_SURE == 'N' ]]; then
        exit
    fi
    
    for file in ${unlink_files_list[@]}
    do
        if [[ -h "${file}" ]]; then
            unlink "${file}" > /dev/null 2>&1
            if [[ $? == 0 ]]; then
                echo "Unlinked: ${file}"
            fi
        fi
    done
    echo
    echo "Dotfiles unlinked successfully..."
    echo "If you want to remove ~/Dotfiles, do it your self..."
}

unlink_dotfiles