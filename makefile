all: folders conky vimrc flat bashrc xresources tint2

folders:
	mkdir -p vim/
	mkdir -p vim/colors
	mkdir -p tint2

tint2:
	cp ~/.config/tint2/tint2rc tint2/tint2rc

conky:
	cp ~/.conkyrc conkyrc

vimrc:
	cp ~/.vimrc vimrc

flat:
	cp ~/.vim/colors/flat.vim vim/colors/flat.vim

bashrc:
	cp ~/.bashrc bashrc

xresources:
	cp ~/.Xresources Xresources
