vimrc = ~/.vimrc
conkyrc = ~/.conkyrc
tint2rc = ~/.config/tint2/tint2rc
bashrc = ~/.bashrc
xresources = ~/.Xresources
muttrc = ~/.muttrc
muttcol = ~/.mutt/colors
scripts = ~/.scripts/*

all: folders conky vim tint2 mutt x bash muttcolor scr

folders:
	mkdir -p tint2
	mkdir -p scripts

scr: $(scripts)
	cp $(scripts) scripts

tint2: $(tint2rc)
	cp $(tint2rc) tint2/tint2rc

conky: $(conkyrc)
	cp $(conkyrc) conkyrc

vim: $(vimrc)
	cp $(vimrc) vimrc

bash: $(bashrc)
	cp $(bashrc) bashrc

x: $(xresources)
	cp $(xresources) Xresources

mutt: $(muttrc)
	cp $(muttrc) muttrc

muttcolor: $(muttcol)
	cp $(muttcol) mutt_colors
