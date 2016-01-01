#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# fix console font
if [ $TERM = 'linux' ]; then
    setfont lat2-16 -m 8859-2
fi

tle_file_name=$(_tle-file-prefix)$$

set_title () {
    if [[ ! -f "$tle_file_name" ]]; then
        echo -ne "\033]0; $(short-cwd)\007"
    fi
}

set_prompt () {
    Red='\[\e[01;31m\]'
    Blue='\[\e[01;34m\]'
    Green='\[\e[01;32m\]'
    Yellow='\[\e[01;33m\]'
    Reset='\[\e[00m\]'

    PS1="┌┈["

    if [[ $EUID == 0 ]]; then
        PS1+="$Red\\h$Reset"
    else
        PS1+="$Green\\u@\\h$Reset"
    fi

    PS1+=" $Blue\\w$Reset]\n└┈["

    if [[ $EUID == 0 ]]; then
        PS1+="$Red\\\$$Reset"
    else
        PS1+="$Green\\\$$Reset"
    fi

    PS1+="]┈> "
    PS2='      > '
    PS3='      > '
    PS4='+ '
}

PROMPT_COMMAND='set_title; set_prompt'

# bash and git completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
[ -r /usr/share/git/completion/git-completion.bash ] && . /usr/share/git/completion/git-completion.bash

# aliases
alias vi='vim'
alias view='vim -R'
alias sudo='sudo '
alias tree='tree -C'
alias ls='ls --color=auto'

