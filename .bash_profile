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
# bash_aliases
###########################

# Be polite
alias please=sudo

# Easier navigation: .., ..., ~ and -
# alias ..="cd .."
# alias ...="cd ../.."
alias ~="cd ~"
# alias -- -="cd -"

# Are you sure you want to do that..?
alias cp='cp -vi'        # to prompt when copying if you want to overwrite and will tell you where information is going
alias rm='rm -i'         # Prompts you if you really want to remove it.
alias mv='mv -i'         # Prompts you if you are going to overwrite something

# List dir contents aliases
# ref: http://ss64.com/osx/ls.html
# identify types (dir, ex, sym, socket, ..), no group, no user, human file size
alias l="ls -Fgoh"
# order by last modified
alias lt="ls -Fgoht"
# list all (no ., ..), same as above
alias la="ls -AFgoh"
# lis all (no ., ..), order by last modified
alias lat="ls -AFgoth"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Copy my public key to the pasteboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# random, fast grep without all the library s***
alias fgrep='fgrep -ri --exclude-dir=__pycache__  --exclude-dir=locations-database --exclude-dir=static --exclude-dir=templates --exclude-dir=venv --exclude-dir=node_modules --exclude-dir=build'

# git
alias gs='git status'
alias go='git checkout'
alias gc='git commit'
alias ga='git add'
alias gap='git add --patch'


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
