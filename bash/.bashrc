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

# Get your colors with:
# for x in 0 1 4 5 7 8; do for i in `seq 30 37`; do for a in `seq 40 47`; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo "";

######################################################################################
# Font stuff
# Redundant
export XDG_CONFIG_HOME="$HOME/.config"

######################################################################################

#######################################################################################
#export GITAWAREPROMPT=~/.git-aware-prompt
#source $GITAWAREPROMPT/main.sh
#
##POWERLINE Symbols
#PL_BLOCK="\342\226\210"
#PL_BRANCH="\356\202\240"
#PL_LN="\356\202\241"
#PL_LOCK="\356\202\242"
#PL_BOLD_RIGHT="\356\202\260"
#PL_RIGHT="\356\202\261"
#PL_BOLD_LEFT="\356\202\262"
#PL_LEFT="\356\202\263"
#
#PL_RIGHT_SEPARATOR=$PL_BLOCK$PL_BOLD_RIGHT
#
## Promps -----------------------------------------------------------------------
## Custom powerbar style prompt
#RED_ON_BLACK="\e[0;31;40m"
#BLACK_ON_GREY="\e[1;30;47m"
#GREY_ON_BLACK="\e[0;37;40m"
#YELLOW_ON_BLACK="\e[1;33;40m"
#BLACK_ON_BLUE="\e[0;30;44m"
#WHITE_ON_BLUE="\e[1;37;44m"
#
#GIT=""
#
#if_git() {
#  if [[ "$git_branch" != "" ]]; then
#    GIT=""
#  else
#    GIT="$git_branch$git_dirty"$RED_ON_BLACK$PL_RIGHT_SEPARATOR
#  fi
#}
#
## Call function each time (first get git-aware-bash)
#PROMPT_COMMAND="find_git_branch; find_git_dirty; if_git; $PROMPT_COMMAND"
#
#PS1="
#\$GIT)\
#$BLACK_ON_GREY \D{%T}$GREY_ON_BLACK$PL_RIGHT_SEPARATOR\
#$YELLOW_ON_BLACK \u@\h$BLACK_ON_BLUE$PL_RIGHT_SEPARATOR\
#$WHITE_ON_BLUE \W\
#$RESET$BLUE$PL_RIGHT_SEPARATOR\
#$RESET "



#User prompt with colors in user and host git aware branch
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
