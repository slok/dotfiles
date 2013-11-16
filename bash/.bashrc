#/home/slok/.bashrc

######################################################################################
#Consts
BOLD=01
NOTBOLD=0

RESET="\[\033[00m\]"

BLACK="\[\033[$NOTBOLD;30m\]"
RED="\[\033[$NOTBOLD;31m\]"
GREEN="\[\033[$NOTBOLD;32m\]"
YELLOW="\[\033[$NOTBOLD;33m\]"
BLUE="\[\033[$NOTBOLD;34m\]"
MAGENTA="\[\033[$NOTBOLD;35m\]"
CYAN="\[\033[$NOTBOLD;36m\]"
WHITE="\[\033[$NOTBOLD;37m\]"

BOLD_BLACK="\[\033[$BOLD;30m\]"
BOLD_RED="\[\033[$BOLD;31m\]"
BOLD_GREEN="\[\033[$BOLD;32m\]"
BOLD_YELLOW="\[\033[$BOLD;33m\]"
BOLD_BLUE="\[\033[$BOLD;34m\]"
BOLD_MAGENTA="\[\033[$BOLD;35m\]"
BOLD_CYAN="\[\033[$BOLD;36m\]"
BOLD_WHITE="\[\033[$BOLD;37m\]"

######################################################################################
#User prompt with colors in user and host
PS1="$BOLD_GREEN\u@\h$RESET:$BOLD_BLUE\W$RESET\$ "
#root prompt
#PS1="$BOLD_RED\u@\h$RESET:$BOLD_BLUE\W$RESET\$ "

#For color testing
#PS1="$BLACK\u\n $RED\u\n $YELLOW\u\n $MAGENTA\u\n $BLUE\u\n $CYAN\u\n $WHITE\u\n $BOLD_BLACK\u\n $BOLD_RED\u\n $BOLD_GREEN\u\n $BOLD_YELLOW\u\n $BOLD_BLUE 
#\u\n $BOLD_MAGENTA\u\n $BOLD_CYAN\u\n $BOLD_WHITE\u\n $RESET$"

#user prompt with colors in last character (# and $)
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;36m\]\$\[\033[0;0m\] '
#root prompt
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]\$\[\033[0;0m\] '

######################################################################################
#Alias

alias ls='ls --color'
alias grep='grep -i --color'

######################################################################################
#exports

export MDISS_RESOURCES_HOME=/home/slok/workspace/mdissphoto/resources
export PATH=$PATH:/usr/share/sbt/bin

#Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/bin/virtualenvwrapper.sh

#Play framework
export PATH=$PATH:/usr/share/play/

#Go language
export PATH=$PATH:/usr/lib64/go/bin

#Heroku
HEROKU_PATH=/home/slok/sources/heroku/heroku-client
export PATH=$PATH:$HEROKU_PATH/bin

#NVM for Node.js
source ~/nvm/nvm.sh

# Go version manager
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
