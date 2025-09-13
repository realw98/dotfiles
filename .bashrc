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


if [ "$color_prompt" = "yes" ]; then
	if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w #\[\033[00m\] '
	else
		PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
	fi
else
	if [[ ${EUID} == 0 ]]; then
		PS1='\h \w # '
	else
		PS1='\u@\h \w \$ '
	fi
fi

if ! shopt -oq posix; then
  if [ -f /usr/local/share/bash-completion/bash_completion.sh ]; then
    . /usr/local/share/bash-completion/bash_completion.sh
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

source ~/.aliases
source ~/dotfiles/.env
[ -s ~/.env ] && source ~/.env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
