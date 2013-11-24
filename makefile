vimrc = ~/.vimrc
conkyrc = ~/.conkyrc
tint2rc = ~/.config/tint2/tint2rc
vimflat = ~/.vim/colors/flat.vim
vimtim = ~/.vim/colors/tim.vim
bashrc = ~/.bashrc
xresources = ~/.Xresources
muttrc = ~/.muttrc
muttcol = ~/.mutt/colors

all: folders conky vim vimsc tint2 mutt x bash muttcolor
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

vimsc: $(vimflat) $(vimtim)
	cp $(vimflat) vim/colors/flat.vim
	cp $(vimtim) vim/colors/tim.vim

bash: $(bashrc)
	cp $(bashrc) bashrc

x: $(xresources)
	cp $(xresources) Xresources

mutt: $(muttrc)
	cp $(muttrc) muttrc

muttcolor: $(muttcol)
	cp $(muttcol) mutt_colors
