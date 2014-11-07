# Dotfiles Final Whistle

Supports OSX and Ubuntu Linux.

# Requirements

OSX: Homebrew would be kool!

# Installation
## OSX

wip

## Ubuntu

You need `git`. You can install `sudo aptitude install git`
    
    cd $HOME
    git clone https://github.com/vigo/dotfiles-universal.git Dotfiles
    ln -s $HOME/Dotfiles/profile ~/.profile
    ln -s $HOME/Dotfiles/rc/bashrc ~/.bashrc
    ln -s $HOME/Dotfiles/rc/inputrc ~/.inputrc

Need to restart shell / logout - login or `exec $SHELL`.