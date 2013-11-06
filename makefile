vimrc = ~/.vimrc
conkyrc = ~/.conkyrc
tint2rc = ~/.config/tint2/tint2rc
vimflat = ~/.vim/colors/flat.vim
bashrc = ~/.bashrc
xresources = ~/.Xresources
muttrc = ~/.muttrc

all: folders conky vim flat tint2 mutt x bash
	chmod -x vimrc

folders:
	mkdir -p vim/
	mkdir -p vim/colors
	mkdir -p tint2

tint2: $(tint2rc)
	cp $(tint2rc) tint2/tint2rc

conky: $(conkyrc)
	cp $(conkyrc) conkyrc

vim: $(vimrc)
	cp $(vimrc) vimrc

flat: $(vimflat)
	cp $(vimflat) vim/colors/flat.vim

bash: $(bashrc)
	cp $(bashrc) bashrc

x: $(xresources)
	cp $(xresources) Xresources

mutt: $(muttrc)
	cp $(muttrc) muttrc
