SRC = /home/erick/dotfiles

function install-vim() {
	cp ~/.vimrc ~/.vimrc.backup
	cp $SRC/.vimrc ~/.vimrc
}
