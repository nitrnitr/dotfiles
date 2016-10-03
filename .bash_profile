set PATH $PATH /usr/local/bin/

export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
#export PS1="\e[0;33m\]\u\e[0m\]@\[\e[0;33m\]\h - \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]$ "
#export PS1="\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;32m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \[\033[38;5;196m\]> \[$(tput sgr0)\]"
export HISTSIZE=""
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ifs='/Users/nitrnitr/dev/templ/if/tools/ifs'
alias be='bundle exec'

alias gst='git status'
alias gco='git checkout .'


alias grep='grep --color=auto'
alias tb="nc termbin.com 9999"
alias tbpb="nc termbin.com 9999|pbcopy"
alias weather="curl wttr.in/La_Plata"
alias vim="nvim -p"
alias vi="nvim -p"
