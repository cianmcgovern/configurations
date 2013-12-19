# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local definitions
if [ -f ~/.exp-local ]; then
    . ~/.exp-local
fi

# User specific aliases and functions

genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9£$%^_ < /dev/urandom | head -c ${l} | xargs
}

function randpass() {
    [ "$2" == "0" ] && CHAR="[:alnum:]" || CHAR="[:graph:]"
    cat /dev/urandom | tr -cd "$CHAR" | head -c ${1:-32}
    echo
}

export PATH=$PATH:/home/users/cmcgovern/tmux/bin/

alias hgi='hg log -r `hg id -n`'

export EDITOR='/usr/bin/vim'
