set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
call vundle#end()            " required
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
colorscheme espresso
set clipboard=unnamed
"colorscheme solarized
:set nu
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set runtimepath^=~/.vim/bundle/ctrlp.vim:~/.vim/bundle/vim-ruby'
func Backspace()
  if col('.') == 1
    if line('.')  != 1
      return  "\<ESC>kA\<Del>"
    else
      return ""
    endif
  else
    return "\<Left>\<Del>"
  endif
endfunc
inoremap <BS> <c-r>=Backspace()<CR>
:set laststatus=2
