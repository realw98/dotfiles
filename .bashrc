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

bld=$(tput bold)
sgr=$(tput sgr0)

if [[ ${EUID} == 0 ]] ; then
	PS1="${bld}\h \w #${sgr} "
else
	PS1="${bld}\h \w \$${sgr} "
fi

inc_file() {
	[ -s "$1" ] && source "$1"
}

if ! shopt -oq posix; then
  inc_file /usr/share/bash-completion/bash_completion || inc_file /etc/bash_completion
fi

inc_file ~/.aliases
inc_file ~/dotfiles/.env
inc_file  ~/.env

export NVM_DIR="$HOME/.nvm"
inc_file "/usr/share/nvm/init-nvm.sh"

