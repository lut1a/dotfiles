#!/usr/bin/env bash

pacman -Qtdq | sudo pacman -Rns -
echo "more stuff to delete, caution necessary"
pacman -Qqd | pacman -Rsu --print -
sudo paccache -ruk0
sudo paccache -rk3
#flatpak remove --unused
#brew autoremove
#brew cleanup
