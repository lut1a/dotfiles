alias docker='podman'
alias tmuxsyu="systemd-run --scope --user tmux new -s upgrade 'sudo pacman -Syu ; exec zsh'"
alias dupdate='sudo apt update && sudo apt upgrade'
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
alias s='kitty +kitten ssh'
alias cupdate='chezmoi update && chezmoi apply'
alias cedit='chezmoi edit --apply'
alias sscp='rsync --verbose --progress --partial'

# COLORS!
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias fgrep='grep -F --color=auto'
#LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
#export LS_COLORS
alias diff='colordiff'
#install colordiff package

######
alias ll='ls -l'
alias lla='ls -la'
alias la='ls -a'


alias h='history'
alias j='jobs -l'
alias bc='bc -l'

