#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='eza -l'
alias cat='bat --paging=never'
alias more='bat --paging=always'
alias dotfiles-git='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# exports
# \[ and \] begin and end a non printing escape section
# this is needed so that bash knows how long the prompt is
# so that the user can't delete it with backspace
# \e[38;5;000m is a color section
# the 38 and 5 are not colors, they are the escape sequence for 256 colors
#export PS1='\[\e[38;5;14m\][\[$(tput sgr0)\]\u@\h \[$(tput sgr0)\]\[\e[38;5;5m\]\W\[$(tput sgr0)\]\[\e[38;5;14m\]]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]'
#export PS1='\[\e[38;5;139m\][\[\e[38;5;109m\]\u@\h \[\e[38;5;173m\]\w\[\e[38;5;139m\]]$\[\e[m\] \[$(tput sgr0)\]'
# The current value actually uses the default terminal colours so that we can nicely use kitty themes
export PS1='\[\e[35m\][\[\e[36m\]\u@\h \[\e[33m\]\w\[\e[35m\]]$\[\e[m\] \[$(tput sgr0)\]'
export EDITOR=vim
export MANPAGER="sh -c 'col -bx | bat -p -f --language=manpage'"
export MANROFFOPT='-c' # Prevents the syntax highlighting from breaking on man pages
export BAT_THEME='Tomorrow-Night'

# binds
#bind 'set completion-ignore-case on'

# Created by `pipx` on 2023-10-24 07:15:52
export PATH="$PATH:/home/tim/.local/bin"
