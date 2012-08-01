# some ls aliases
alias ll="ls -lh"
alias la="ls -lha"
alias l=ls

# some more aliases
alias mkcd=". ~/skript/mcd"

export HOME=/Users/jankischkel
export APPS_HOME=$HOME/Apps
export MYSQL_HOME=/usr/local/mysql
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
export GROOVY_HOME=$APPS_HOME/groovy
export GRAILS_HOME=$APPS_HOME/grails
export SCALA_HOME=$APPS_HOME/scala
export MAC_VIM_HOME=/Applications/MacVim.app/Contents/MacOS
export MAATKIT_HOME=$APPS_HOME/maatkit-7540

PATH=${PATH}:$MYSQL_HOME/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$MAC_VIM_HOME:~/Skript:$APPS_HOME/s3cmd:$SCALA_HOME/bin

export PS1="\[\033[02;32m\]\w \$\[\033[00m\] "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# set rvm env
# rvm use ruby-1.8.7-p334@rails235
