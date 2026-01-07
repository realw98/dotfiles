inc_file() {
	[ -s $1 ] && source $1
}

inc_file ~/dotfiles/.env
inc_file ~/.env


