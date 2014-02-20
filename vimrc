set nocompatible
set hidden
filetype off
set cursorline

" Replace <Leader> with ,
let mapleader = ","


" View whitespace
nmap l :set list!
set listchars=tab:»\ ,eol:¬

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

"""""" VUNDLE 
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" vundle
Bundle 'gmarik/vundle'
" follow VCS changes in the left gutter
Bundle 'mhinz/vim-signify'
" Fugitive
Bundle 'tpope/vim-fugitive'
" JSON syntax
Bundle 'elzr/vim-json'
" distraction-free with <leader>V
Bundle 'mikewest/vimroom'
" pandoc
Bundle 'vim-pandoc/vim-pandoc-syntax'
Bundle 'vim-pandoc/vim-pandoc'
" less syntax
Bundle 'groenewege/vim-less'
" better javascript syntax
Bundle 'pangloss/vim-javascript'
" (un)comment with <leader>c(u/c)
Bundle 'scrooloose/nerdcommenter'
" use tab for auto-completion
Bundle 'ervandew/supertab'
" R communication
"Bundle 'jalvesaq/VimCom'
"Bundle 'jcfaria/Vim-R-plugin'
" Add END after begin
Bundle 'tpope/vim-endwise'
" Liquid markup
Bundle 'tpope/vim-liquid'
" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" Base 16
Bundle "chriskempson/base16-vim"
Bundle "tpoisot/vim-base16-term"
" Solarized
" Bundle "altercation/vim-colors-solarized"
" Rainbow parentheses
Bundle 'kien/rainbow_parentheses.vim'
" ipython
Bundle 'ivanov/vim-ipython'
"""""" END VUNDLE

" python
let python_highlight_all = 1
let python_highlight_indent_errors = 0
let python_highlight_space_errors = 0

"Liquid
let g:pandoc_use_embeds_in_codeblocks_for_langs = ['ruby', 'vim', 'python', 'r', 'json', 'c']

"Signify
let g:signify_sign_add      = '⇒'
let g:signify_sign_delete   = '⇐'
let g:signify_sign_change   = '⇔'

"SuperTab!
let g:SuperTabDefaultCompletionType = "context"

" <leader>k Knits to MD
nnoremap <leader>k :! Rscript -e "library(knitr);knit(input='%', output='%:r.md');"<CR>

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
let base16colorspace=256

set background=dark
colorscheme base16

"""""" Various writing improvements

" New signs for the pandoc bundle
let g:pandoc_syntax_user_cchars = {'atx': '¶', 'codelang': '>', 'footnote': '§', 'definition': '»'}

"Rmd and Rpres are pandoc
au BufRead,BufNewFile *.Rmd,*.Rpres setfiletype pandoc

" Format paragraphs with <leader>q
map <leader>q {!}fmt -w 80<CR>}<CR>

" Place markers with {type} for markdown files
augroup markers
   autocmd! BufEnter *.md,*.mkd,*.txt,*.Rmd,*.Rpres match Error '{\w\+}'
augroup END
nnoremap <leader>{ :vimgrep /{\w\+}/ %<CR>:copen<CR>
"""""" END


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

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
