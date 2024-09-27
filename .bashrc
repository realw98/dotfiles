if [[ $- != *i* ]] ; then
        return
fi

set -o notify
set -o noclobber
#set -o ignoreeof
#set -o nounset

shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s mailwarn
shopt -s sourcepath
shopt -s no_empty_cmd_completion  # только для bash>=2.04
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob

export HISTCONTROL=ignoredups

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

inc_file() {
  [ -s $1 ] && source $1
}

source ~/dotfiles/.aliases
source ~/dotfiles/.env.sh
inc_file ~/.env.local.sh

if [ "$color_prompt" = "yes" ]; then
	PS1='\[\033[01;32m\]${TERMUX_HOSTNAME}\[\033[01;34m\] \w \$\[\033[00m\] '
else
	PS1='${TERMUX_HOSTNAME} \w \$ '
fi

