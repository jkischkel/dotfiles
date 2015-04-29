# some ls aliases
alias ll="ls -lh"
alias la="ls -lha"
alias l=ls

# some more aliases
alias mvim="open -a MacVim"
alias json="python -mjson.tool"
alias j7="/usr/libexec/java_home -v 1.7.0_17 --exec javac -version"

# locale settings
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# path constants
export EDITOR=vi
export HOME=/Users/jankischkel
export APPS_HOME=$HOME/Apps
export MYSQL=/usr/local/bin/mysql
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
export MAC_VIM_HOME=/Applications/MacVim.app/Contents/MacOS
export SCALA_HOME=/usr/local/Cellar/scala/2.10.0/libexec
export SBT_OPTS="-XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled" 

source ~/.git-completion.bash

PATH=${PATH}:$MYSQL:$GROOVY_HOME/bin:$GRAILS_HOME/bin:$MAC_VIM_HOME:~/Skript:$APPS_HOME/s3cmd:$SCALA_HOME/bin:$HOME/Script:/usr/local/sbin:$HOME/bin:$CASSANDRA_HOME/bin:$CARGO_HOME/bin:$DERBY_HOME/bin:$GLASSFISH_HOME/glassfish/bin

export PS1="\[\033[02;32m\]\w \$\[\033[00m\] "

rvminit() {
  rvm use 2.1.0@$(basename $(pwd)) --create --rvmrc
  source cd .
}

derby() {
  java -jar $DERBY_HOME/lib/derbyrun.jar server start
}

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
