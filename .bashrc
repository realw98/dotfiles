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

export HISTCONTROL=ignoreboth

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


if [ "$color_prompt" = "yes" ]; then
	if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w #\[\033[00m\] '
	else
		PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
	fi
else
	if [[ ${EUID} == 0 ]]; then
		PS1='\h \w # '
	else
		PS1='\h \w \$ '
	fi
fi

inc_file() {
	[ -s "$1" ] && source "$1"
}

if ! shopt -oq posix; then
	inc_file /usr/share/bash-completion/bash_completion || inc_file /etc/bash_completion
fi

inc_file ~/dotfiles/.env
inc_file ~/.env
inc_file ~/.aliases

export NVM_DIR="$HOME/.nvm"
inc_file "$NVM_DIR/nvm.sh"
inc_file "$NVM_DIR/bash_completion"
inc_file "$HOME/.cargo/env"

