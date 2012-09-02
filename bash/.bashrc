#/home/slok/.bashrc

#User prompt with colors in user and host
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0;0m\]\$ '
#root prompt
#PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[0;0m\]\$ '

#Alias
alias ls='ls --color'
alias grep='grep -i --color'

#exports

#Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
