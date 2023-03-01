alias docker='podman'
alias pkgupd="systemd-run --scope --user tmux new -s upgrade 'sudo pacman -Syu ; exec zsh'"
alias tmuxc='tmux new -s'
alias n='tmux new-window'
alias a='tmux a'
alias wee='tmux new -s weechat weechat'
alias root='sudo -i'
alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias gita='git add -A'
alias gitc='git commit -m'
alias gitp='git push -u origin main'
alias gits='git status'
alias gitn='cd ~/.local/share/chezmoi && gita && gitc "dotfiles update" && gitp'
alias mkdir='mkdir -pv'
alias xu='du -d1 -h | sort -h'
alias xf='df -h'
alias mnt="mount | grep -E '^/dev' | column -t"
alias gh='history | grep -i'
alias las='ls -t -1'
alias prog='watch progress'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias wget='wget -c'
alias cedit='chezmoi edit --apply'
alias sscp='rsync --verbose --progress --partial'

# COLORS!
alias ls='ls -pvh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias fgrep='grep -F --color=auto'
alias diff='diff --color=auto'

######
alias ll='ls -l'
alias lla='ls -lA'
alias la='ls -A'


alias h='history'
alias j='jobs -l'
alias bc='bc -l'


man ()
{
    env \
        LESS_TERMCAP_mb=$(tput bold; tput setaf 6) \
        LESS_TERMCAP_md=$(tput bold; tput setaf 6) \
        LESS_TERMCAP_me=$(tput sgr0) \
        LESS_TERMCAP_se=$(tput rmso; tput sgr0) \
        LESS_TERMCAP_ue=$(tput rmul; tput sgr0) \
        LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 4) \
        LESS_TERMCAP_mr=$(tput rev) \
        LESS_TERMCAP_mh=$(tput dim) \
        LESS_TERMCAP_ZN=$(tput ssubm) \
        LESS_TERMCAP_ZV=$(tput rsubm) \
        LESS_TERMCAP_ZO=$(tput ssupm) \
        LESS_TERMCAP_ZW=$(tput rsupm) \
        man "$@"
}
