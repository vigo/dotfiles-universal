# Dotfiles Final Whistle

Supports OSX and Ubuntu Linux.

## Requirements

### OSX

[Homebrew][01] would be kool!

### Ubuntu:
`git` required. `sudo aptitude install git` can help you out...

## Installation

You need to clone the repo:

    cd $HOME
    git clone https://github.com/vigo/dotfiles-universal.git Dotfiles
    
    # backup existing settings
    mv .bashrc bashrc_old
    mv .profile profile_old
    
    ln -s $HOME/Dotfiles/profile ~/.profile
    ln -s $HOME/Dotfiles/rc/bashrc ~/.bashrc
    ln -s $HOME/Dotfiles/rc/inputrc ~/.inputrc
    ln -s $HOME/Dotfiles/rc/ackrc ~/.ackrc # if you’ve installed ack?
    ln -s $HOME/Dotfiles/rc/irbrc ~/.irbrc # if you’ve installed irb?
    ln -s $HOME/Dotfiles/rc/pryrc ~/.pryrc # if you’ve installed pry gem ?
    ln -s $HOME/Dotfiles/rc/nano ~/.nanorc # if you’ve installed nano ? v2.4.2

### OSX Special

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

## Prompt Shell Features

**OSX**: Free Memory, Battery status, IP List

**BOTH**: Rbenv + Git prompt

## Screenshots

![Terminal Screen](http://i.imgur.com/kXegjAf.png)

## History

**2015-11-16**

* updated: all shell executions changed to $(...) instead of `...`
* fixed: `command -v` instead of `which`

**2015-11-15**

* updated: GIT prompt now supports recursive modified files count + deleted files.
* new: HG (mercurial) prompt added. Kind of experimental! please report bugs!

**2015-11-11**

* `lock_screen` alias for OSX Users. Locks OSX via command line!

**2015-09-25**

* `vimrc` removed

**2015-08-15**

* `.gitignore` fixed

**2015-07-30**

* `what_is_my_real_ip` alias added, uses: `ifconfig.co`

**2015-07-11**

* `what_is_my_public_ip` alias added for getting public/real ip :)

**2015-07-10**

* Docker IP support for Prompt

**2015-07-07**

* Nano 2.4.2 support :)

**2015-06-12**

* MySQL server status added to prompt. (OSX + Homebrew only)

**2015-06-10**

* Screen shot updated

**2015-06-03**

* `$VIRTUAL_ENV` prompt added. Shows Python and Django version
* Bash completion for Djano `django-admin.py` and `manage.py`

**2015-06-02**

* `virtualenvwrapper.sh` added for initializer.

**2015-05-28**

* **Nano** version **2.4.1** support for `nanorc` (*brew*)

**2015-05-27**

* `pryirc` bug fixed.

**2015-05-20**

* `pryirc` added. If you have `awesome_print`, pry will use it automatically 
* pry-prompt colorized.

**2015-04-14**

* `nanorc` added. You need to install **nano** from [Homebrew][01]
`brew install nano` and link `ln -s ~/Dotfiles/rc/nanorc ~/.nanorc`

**2014-11-09**

* `ackrc` added


[01]: http://brew.sh
