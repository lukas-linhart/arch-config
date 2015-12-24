#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# fix console font
if [ $TERM = 'linux' ]; then
    setfont lat2-16 -m 8859-2
fi

PS1='[\u@\h \w]$ '
PS2='> '
PS3='> '
PS4='+ '

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# aliases
alias vi="vim"
alias view="vim -R"
alias sudo="sudo "
alias tree="tree -C"

