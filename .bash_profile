GIT_PS1_SHOWDIRTYSTATE=true
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export LC_CTYPE=$LANG
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\] \W \$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ifs='/Users/nitrnitr/dev/templ/if/tools/ifs'
alias be='bundle exec'
alias gst='git status'
[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
eval "$(rbenv init -)"
source ~/.git-prompt.sh
