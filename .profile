# some ls aliases
alias ll="ls -lh"
alias la="ls -lha"
alias l=ls

# some more aliases
alias mkcd=". ~/skript/mcd"

# locale settings
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# path constants
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


# add marks support
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\-/g' && echo
}

# set rvm env
# rvm use ruby-1.8.7-p334@rails235
