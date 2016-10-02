#!/usr/bin/env bash

set -e

install_dotfiles() {
    echo "This script will link some files under your ${HOME} directory."
    echo
    if [[ -f "${HOME}/.profile" ]]; then
        mv $HOME/.profile $HOME/.profile_old && echo "~/.profile found and moved as: ~/.profile_old"
    fi

    if [[ -f "${HOME}/.bashrc" ]]; then
        mv $HOME/.bashrc $HOME/.bashrc_old && echo "~/.bashrc found and moved as: ~/.bashrc_old"
    fi

    ln -s "${HOME}/Dotfiles/profile" "${HOME}/.profile" && echo "Linked: ~/.profile"
    ln -s "${HOME}/Dotfiles/rc/bashrc" "${HOME}/.bashrc" && echo "Linked: ~/.bashrc"
    ln -s "${HOME}/Dotfiles/rc/inputrc" "${HOME}/.inputrc" && echo "Linked: ~/.inputrc"
    ln -s "${HOME}/Dotfiles/rc/screenrc" "${HOME}/.screenrc" && echo "Linked: ~/.screenrc"
    ln -s "${HOME}/Dotfiles/rc/irbrc" "${HOME}/.irbrc" && echo "Linked: ~/.irbrc"
    ln -s "${HOME}/Dotfiles/rc/pryrc" "${HOME}/.pryrc" && echo "Linked: ~/.pryrc"
    ln -s "${HOME}/Dotfiles/rc/gemrc" "${HOME}/.gemrc" && echo "Linked: ~/.gemrc"
    ln -s "${HOME}/Dotfiles/rc/ackrc" "${HOME}/.ackrc" && echo "Linked: ~/.ackrc"
}

install_dotfiles
