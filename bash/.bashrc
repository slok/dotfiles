#/home/slok/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

######################################################################################
#Consts
BOLD=01
NOTBOLD=0

RESET="\[\e[00m\]"

BLACK="\[\e[$NOTBOLD;30m\]"
RED="\[\e[$NOTBOLD;31m\]"
GREEN="\[\e[$NOTBOLD;32m\]"
YELLOW="\[\e[$NOTBOLD;33m\]"
BLUE="\[\e[$NOTBOLD;34m\]"
MAGENTA="\[\e[$NOTBOLD;35m\]"
CYAN="\[\e[$NOTBOLD;36m\]"
WHITE="\[\e[$NOTBOLD;37m\]"

BOLD_BLACK="\[\e[$BOLD;30m\]"
BOLD_RED="\[\e[$BOLD;31m\]"
BOLD_GREEN="\[\e[$BOLD;32m\]"
BOLD_YELLOW="\[\e[$BOLD;33m\]"
BOLD_BLUE="\[\e[$BOLD;34m\]"
BOLD_MAGENTA="\[\e[$BOLD;35m\]"
BOLD_CYAN="\[\e[$BOLD;36m\]"
BOLD_WHITE="\[\e[$BOLD;37m\]"

BACK_BLACK='\e[40m'   # Black - Background
BACK_RED='\e[41m'   # Red
BACK_GREEN='\e[42m'   # Green
BACK_YELLOW='\e[43m'   # Yellow
BACK_BLUE='\e[44m'   # Blue
BACK_PURPLE='\e[45m'   # Purple
BACK_CYAN='\e[46m'   # Cyan
BACK_WHITE='\e[47m'   # White
######################################################################################
# Font stuff
# Redundant
export XDG_CONFIG_HOME="$HOME/.config"

######################################################################################
#User prompt with colors in user and host git aware branch
#export GITAWAREPROMPT=~/.git-aware-prompt
#source $GITAWAREPROMPT/main.sh
#PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$YELLOW \$git_branch$RESET\$ "

# How to get special characters dor the prompt:
#   echo -e "\xef\x81\x8b" |hexdump -b
#   0000000 357 201 213 012
#   0000004
# Take the "357 201 213" and set as \357\201\213
#LAST_CHAR="\357\201\224\357\201\224"
#PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$YELLOW \$git_branch$RESET$LAST_CHAR "

#User prompt with colors in user and host
PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$RESET\$ "

#root prompt
#PS1="$BOLD_RED\u@\h$RESET:$BOLD_BLUE\W$RESET\$ "

#For color testing
#PS1="$BLACK\u\n $RED\u\n $YELLOW\u\n $MAGENTA\u\n $BLUE\u\n $CYAN\u\n $WHITE\u\n $BOLD_BLACK\u\n $BOLD_RED\u\n $BOLD_GREEN\u\n $BOLD_YELLOW\u\n $BOLD_BLUE
#\u\n $BOLD_MAGENTA\u\n $BOLD_CYAN\u\n $BOLD_WHITE\u\n $RESET$"

#user prompt with colors in last character (# and $)
#PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\W\[\e[01;36m\]\$\[\e[0;0m\] '
#root prompt
#PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\W\[\e[01;31m\]\$\[\e[0;0m\] '

######################################################################################
#Alias

alias ls='ls --color'
alias grep='grep -i --color'
alias ubuntu='docker run --rm -it ubuntu:14.04 /bin/bash'

######################################################################################
# Local bin
export PATH="$HOME/.local/bin:$PATH

# Npm on user home (npm config set prefix ~/npm)
#export PATH="$PATH:$HOME/npm/bin"

# Rbenv
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# Virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Projects
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
#export VIRTUALENVWRAPPER_VIRTUALENV=virtualenv2
#source /usr/bin/virtualenvwrapper.sh

# Play framework
#export PATH=$PATH:/usr/share/play/

# GO
#export GOPATH=~/projects/go
#export PATH=$PATH:$GOPATH/bin

# Heroku
#HEROKU_PATH=/home/slok/sources/heroku/heroku-client
#export PATH=$PATH:$HEROKU_PATH/bin

# NVM for Node.js
#source ~/nvm/nvm.sh

# NPM userspace (Use:  npm config set prefix ~/npm)
#export PATH="$PATH:$HOME/npm/bin"

# Go version manager
#[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# TMUX (Load session if any)
#if which tmux 2>&1 >/dev/null; then
#    #if not inside a tmux session, and if no session is started, start a new session
#    test -z "$TMUX" && (tmux attach || tmux new-session)
#fi
