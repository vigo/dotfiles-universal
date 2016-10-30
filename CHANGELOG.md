# Dotfiles Final Whistle
## Change Log

**2016-10-30**

* Safe folder name for `mkdir_cd`. Allowed chars are: `space`, `A` to `Z` or `a` to `z`, numbers (0-9), `.`, `_`, `+` and `-`

**2016-10-29**

* Added: `mkdir_cd` function. Creates directory and goes in to it!

**2016-10-25**

* Added: `dataurl` function. Creates base64 encoded image string. Try `dataurl my_image.png`

**2016-10-02**

* Added install and uninstall scripts.
* Nano config is now optional.

**2016-09-25**

* Added `virtualenv_prompt` for `$PS1`
* Added colors to `pyenv`, `rbenv` and `virtualenv` prompts.

**2016-09-09**

* `autoenv` support added

**2016-09-05**

* big change: Now using `pyenv` for python version management. You need to
install it! Recommended pyenv plugins: `pyenv-pip-rehash`, `pyenv-virtualenv`,
`pyenv-virtualenvwrapper`

**2016-05-08**

* added: `APPLESCRIPT_VERSION` shell variable for mac os x config.

**2016-03-20**

* fixed: `readme.md` file
* added: MIT license

**2016-01-19**

* added: `screenrc`
* fixed: `$PROMPT_COMMAND` while using screen.

**2016-01-08**

* added: Bash completion for `printenv`

**2015-12-09**

* changed: `mysql_prompt` changed to `database_prompt`, now supports **MySQL** and
**PostgreSQL**

**2015-12-03**

* `gemrc` added.

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
