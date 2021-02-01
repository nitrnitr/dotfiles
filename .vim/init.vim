filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'danro/rename.vim'
Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/junegunn/vim-peekaboo'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'jelera/vim-javascript-syntax'
Plug 'https://github.com/lumiliet/vim-twig'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'junegunn/fzf'
Plug 'ianks/vim-tsx'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'hashivim/vim-terraform'
" Python
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
call plug#end()

autocmd! bufwritepost init.vim source %
set autoindent
set background=dark
set clipboard=unnamed,unnamedplus
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
set rtp+=/usr/local/opt/fzf
set shiftwidth=2
set showmatch
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set tabstop=2
set whichwrap=<,>,[,]
"colorscheme solarized

"colorscheme base16-tomorrow-night
colorscheme anderson
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

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Rigth> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

let mapleader="ñ"
nnoremap <leader>g :Ag<Space>
nnoremap <leader>f /
nnoremap <leader>F ?
nnoremap <leader>* :Ag <C-R><C-W><CR>

let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o -path 'public/packs/**' -prune -o -path 'public/packs-test/**' -prune -o -path 'public/assets/**' -prune -o -path 'tmp/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" fn delete == supr
inoremap <C-d> <Esc>lxi

au BufNewFile,BufRead *.ejs set filetype=html

nnoremap Q <nop>
autocmd BufWritePre * :%s/\s\+$//e

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js
    \ set tabstop=2  |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set noexpandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.vue
    \ set tabstop=2  |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set noexpandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.rb
    \ set tabstop=2  |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
