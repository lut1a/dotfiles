export fpath=($HOME/.zsh/morecompletions/src $fpath)
autoload -Uz compinit
compinit
_comp_options+=(globdots)
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
