set nocompatible
set hidden
filetype off
set cursorline

" Replace <Leader> with ,
let mapleader = ","

" Move across splits
nnoremap <leader>sh :sp<CR>
nnoremap <leader>sv :vsp<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
set splitbelow
set splitright

" Select blocks after indenting
vnoremap < <gv
vnoremap > >gv

" View whitespace
nnoremap <leader>l :set list!<CR>
set listchars=tab:»\ ,eol:¬

" Better auto-completion of options
set wildmenu
set wildmode=list:longest

" Ignorecase when searching with /, keep case when searching with *
set ignorecase
set smartcase

" Stop highlighting search matches
nmap <silent> <leader>h :silent :nohlsearch<CR>

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
Plugin 'gmarik/vundle'
" follow VCS changes in the left gutter
Plugin 'mhinz/vim-signify'
" Fugitive
Plugin 'tpope/vim-fugitive'
" GitHub issues
Plugin 'jaxbot/github-issues.vim'
" JSON syntax
Plugin 'elzr/vim-json'
" distraction-free with <leader>V
Plugin 'BenoitZugmeyer/vimroom'
" pandoc
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc'
" less syntax
Plugin 'groenewege/vim-less'
" scss syntax
Plugin 'cakebaker/scss-syntax.vim'
" CSS colors
Plugin 'ap/vim-css-color'
" better javascript syntax
Plugin 'pangloss/vim-javascript'
" (un)comment with <leader>c(u/c)
Plugin 'scrooloose/nerdcommenter'
" use tab for auto-completion
Plugin 'ervandew/supertab'
" Neocomplete
Plugin 'Shougo/neocomplete.vim'
" R communication
"Plugin 'jalvesaq/VimCom'
"Plugin 'jcfaria/Vim-R-plugin'
" Add END after begin
Plugin 'tpope/vim-endwise'
" Surround
Plugin 'tpope/vim-surround'
" Liquid markup
Plugin 'tpope/vim-liquid'
" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" ipython
Plugin 'ivanov/vim-ipython'
" julia
Plugin 'JuliaLang/julia-vim'
" Autoclose brackets
Plugin 'Townk/vim-autoclose'
" Theme
Plugin 'tpoisot/vim-base16-term'
" Ctags
Plugin 'majutsushi/tagbar'
" NERD Tree with git support
Plugin 'Xuyuanp/nerdtree'
" LaTeX-Suite
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
" Create gists
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
"""""" END VUNDLE

" python
let python_highlight_all = 1
let python_highlight_indent_errors = 0
let python_highlight_space_errors = 0

" NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>

" tagbar
nnoremap <leader>t :TagbarToggle<CR>

"Liquid
let g:pandoc_use_embeds_in_codeblocks_for_langs = ['ruby', 'vim', 'python', 'r', 'json', 'c', 'julia']

"SuperTab!
let g:SuperTabDefaultCompletionType = "context"

" NeoComplete
let g:neocomplete#enable_at_startup = 0
let g:neocomplete#enable_smart_case = 1
nnoremap <leader>ne :NeoCompleteEnable<CR>
nnoremap <leader>nd :NeoCompleteDisable<CR>

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

set background=light
colorscheme base16

"""""" Various writing improvements

" New signs for the pandoc bundle
let g:pandoc_syntax_user_cchars = {'atx': '¶', 'codelang': '>', 'footnote': '§', 'definition': '»', 'newline': '¬'}

"Rmd and Rpres are pandoc
au BufRead,BufNewFile *.Rmd,*.Rpres setfiletype pandoc

" Format paragraphs with <leader>q
map <leader>q {!}fmt -w 80<CR>}<CR>

" Place markers with {type} for markdown files
augroup markers
   autocmd! BufEnter *.md,*.mkd,*.txt,*.Rmd,*.Rpres match Error '{{\w\+}}'
augroup END
nnoremap <leader>{{ :vimgrep /{\w\+}}/ %<CR>:copen<CR>
"""""" END


"Bib file for pandoc
let g:pandoc_bibfiles = ['/home/tp/texmf/bibtex/bib/local/library.bib']
"let g:pandoc_use_bibtool = 1

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
let g:Tex_BIBINPUTS = "/home/tp/texmf/bibtex/bib/local/library.bib"
let g:Tex_BibtexFlavor = 'bibtex'
let g:Tex_Flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
set iskeyword+=:

map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" GitHub access token
let g:github_access_token = "f8dfb0560ec35045a19e5f1eebba73d137f7cff7"
let g:github_upstream_issues = 1

" tagbar markdown
let g:tagbar_type_pandoc = {
    \ 'ctagstype': 'pandoc',
    \ 'ctagsbin' : '~/.scripts/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

" tagbar r
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }
" Gist options
let g:gist_detect_filetype = 1
