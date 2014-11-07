# Dotfiles Final Whistle

Supports OSX and Ubuntu Linux.

# Requirements
### OSX
[Homebrew][01] would be kool!

### Ubuntu:
`git` required. `sudo aptitude install git`

# Installation

You need to clone the repo:

    cd $HOME
    git clone https://github.com/vigo/dotfiles-universal.git Dotfiles
    ln -s $HOME/Dotfiles/profile ~/.profile
    ln -s $HOME/Dotfiles/rc/bashrc ~/.bashrc
    ln -s $HOME/Dotfiles/rc/inputrc ~/.inputrc

## OSX Special

If you like to tweak Yosemite, try:

    sh $HOME/tweaks_osx.sh

Need to restart shell / logout - login or `exec $SHELL`.

## Goodies

* Fancy `history`
* Color-full files :)
* `.inputrc` magic!
* OSX specific aliases: `desktop_hide`, `desktop_show`, `shadow_screenshot_disable`,
`shadow_screenshot_enable`, `ios_backup_disable`, `ios_backup_enable`,
`ds_store_clear`, `reload_textmate`

Put all of your **private** stuff under `Private/` folder! Custom functions,
env, aliases etc...

# Prompt Shell Features

**OSX**: Free Memory, Battery status, IP List

**BOTH**: Rbenv + Git prompt

### Screenshots

![Terminal Screen](http://i.imgur.com/dYNqSKj.png)

[01]: http://brew.sh