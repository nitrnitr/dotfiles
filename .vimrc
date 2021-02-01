filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'danro/rename.vim'
Plug 'https://github.com/junegunn/vim-peekaboo'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/lumiliet/vim-twig'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kristijanhusak/vim-hybrid-material'
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
set iskeyword-=_
set list
set noshowmode
set noswapfile
set nowrap
set number
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set tabstop=2
set whichwrap=<,>,[,]
"colorscheme solarized

colorscheme base16-tomorrow-night

if has("termguicolors")
  set termguicolors
endif

"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline+=%*
set listchars=nbsp:☠,tab:▸␣

map <c-p> :Files<enter>

let g:lightline = {
  \ 'colorscheme': 'jellybeans'
  \ }

filetype plugin on
filetype plugin indent on    " required
syntax on
let leader = ','
map <leader><left> :tabp<enter>
map <leader><right> :tabn<enter>
nmap <silent> <Esc><Esc> :w<Cr>

nnoremap Q <nop>
autocmd BufWritePre * :%s/\s\+$//e
