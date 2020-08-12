syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noerrorbells
set smartindent
set incsearch
set expandtab
set ai
set number
set hlsearch
set ruler
set autoindent
highlight Comment ctermfg=green
set backspace=indent,eol,start

au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4

set conceallevel=2
