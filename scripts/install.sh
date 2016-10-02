#!/usr/bin/env bash

set -e

install_dotfiles() {
    echo "This script will link some files under your ${HOME} directory."
    echo
    mv $HOME/.bashrc $HOME/bashrc_old > /dev/null 2>&1
    mv $HOME/.profile $HOME/profile_old > /dev/null 2>&1
    
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
