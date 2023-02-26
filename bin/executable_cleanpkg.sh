#!/usr/bin/env bash

pacman -Qtdq | sudo pacman -Rns -
sudo paccache -ruk0
sudo paccache -rk3
#flatpak remove --unused
#brew autoremove
#brew cleanup
