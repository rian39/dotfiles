set nocompatible

set scrolloff=3

set ruler
set nohlsearch
set autoread

"Various general options
set noswapfile
set noerrorbells "STFU!
set visualbell
set nobackup
set nowritebackup
set encoding=utf-8
set foldmethod=marker

"Line numbers and syntax
set number "Line numbers
syntax enable "Syntax coloration
filetype off
filetype plugin indent on

set t_Co=256

set background=dark
colorscheme flat

let vimrplugin_screenplugin = 0

"Pathogen
execute pathogen#infect()

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
