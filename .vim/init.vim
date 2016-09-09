set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/junegunn/vim-peekaboo'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'danro/rename.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'mhinz/vim-startify'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
call plug#end()

autocmd! bufwritepost init.vim source %
set autoindent
set background=dark
set clipboard=unnamed
set encoding=utf-8
set expandtab
set fileencodings=utf-8
set laststatus=2
set list
set noshowmode
set nowrap
set nu
set number
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set tabstop=2
set whichwrap=<,>,[,]
colorscheme hybrid_material

"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline+=%*
set listchars=nbsp:☠,tab:▸␣

map <c-p> :Files<enter>

let g:lightline = {
  \ 'colorscheme': 'jellybeans'
  \ }
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'

filetype plugin on
filetype plugin indent on    " required
syntax on
autocmd BufWritePre * :%s/\s\+$//e

