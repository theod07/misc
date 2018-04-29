#!/bin/bash

# postgress.app
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"

# added by Anaconda3 4.2.0 installer
#export PATH="/Users/explore/anaconda3/bin:$PATH"
export PATH="$PATH:/Users/explore/anaconda3/bin"

# Homebrew binaries now take precedence over Apple defaults
PATH=/usr/local/bin:$PATH
export PATH

# Git branch in Bash prompt https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

# command prompts
# export PS1="\W$ "
export PS1="\[\033[32m\]\W\[\033[33m\]\[$(parse_git_branch)\]\[\033[00m\]$ "

# https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"




###########################
# bash_exports
###########################

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Increase the maximum number of lines contained in the history file
# (default is 500)
export HISTFILESIZE=10000

# Increase the maximum number of commands to remember
# (default is 500)
export HISTSIZE=10000

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"
export PAGER="less -S"

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


###########################
# bash_exports
# TODO -- http://ss64.com/bash/shopt.html
###########################

export PATH="$HOME/.cargo/bin:$PATH"



# #########################
# Use dotfiles
# #########################
[ -r ~/.extra ] && [ -f ~/.extra ] && source ~/.extra;
[ -r ~/.aliases ] && [ -f ~/.aliases ] && source ~/.aliases;
[ -r ~/.exports ] && [ -f ~/.exports ] && source ~/.exports;
