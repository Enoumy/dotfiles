export PS1="\[\033[38;5;10m\]\W\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2cmd"
set vi-ins-mode-string "\1\e[6 q\2ins"

alias t='tmux new-session -A -s main'
