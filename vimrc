set nocompatible
set hidden
filetype off
set cursorline

" Replace <Leader> with ,
let mapleader = ","

" Better auto-completion of options
set wildmenu
set wildmode=list:longest

" Ignorecase when searching with /, keep case when searching with *
set ignorecase
set smartcase

" Stop highlighting search matches
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Scroll faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
set ruler

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" VUNDLE 
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-markdown'
Bundle 'mikewest/vimroom'
Bundle 'vim-pandoc/vim-pandoc'
" END VUNDLE

"The cursor is never on the last line
set scrolloff=3

"Search is not highlighted
set nohlsearch

"Files are read as soon as they are changed
set autoread

"Various general options
set noswapfile
set noerrorbells
set visualbell
set nobackup
set nowritebackup
set encoding=utf-8
set foldmethod=marker

"Line numbers and syntax
set number "Line numbers
syntax enable "Syntax coloration
filetype plugin indent on

set t_Co=256

set background=light
colorscheme solarized

"For the R plugin
let vimrplugin_screenplugin = 0

map q {!}fmt -w 80

"Bib file for pandoc
let g:pandoc_bibfiles = ['/home/tpoisot/texmf/bibtex/bib/local/library.bib']

"Indentation parameters
set autoindent
set cindent
set softtabstop=3
set tabstop=3
set shiftwidth=3
set expandtab
set smarttab

" This line is needed for bib files
set grepprg=grep\ -nH\ $*

" Latex kind of stuff
let g:Tex_BIBINPUTS = "/home/tpoisot/texmf/bibtex/bib/local/library.bib"
let g:Tex_BibtexFlavor = 'bibtex'
let g:Tex_Flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:
