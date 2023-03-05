#!/usr/bin/env bash

rsync -avh --progress --exclude-from="$HOME"/bin/exclude.txt --delete-before "$HOME"/ /mnt/t5intbkp/"$USER"/
rsync -avh --progress --delete-before "$HOME"/.pim/ /mnt/t5intbkp/.pim/
rsync -avh --progress --delete-before "$HOME"/.local/share/chezmoi/ /mnt/t5intbkp/dotfiles/
rsync -avh --progress --delete-before /var/cache/pacman/ /mnt/t5intbkp/pacman/
