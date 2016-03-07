set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
"
" " My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'gmoe/vim-espresso'
filetype plugin on
filetype plugin indent on    " required
syntax on
"
autocmd BufWritePre * :%s/\s\+$//e
let g:solarized_termcolors=256
syntax enable
":set background=dark

set t_Co=256
set background=dark
set fileencodings=utf-8
set encoding=utf-8
colorscheme espresso
set clipboard=unnamed
"colorscheme solarized
set nu
set expandtab
set tabstop=2
set shiftwidth=2
set runtimepath^=~/.vim/bundle/ctrlp.vim:~/.vim/bundle/vim-ruby'
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2
