#!/usr/bin/env bash

xargs -a "$HOME"/bin/archpkgs.txt sudo pacman -S --needed
#xargs -a "$HOME"/bin/fltpkgs.txt flatpak install
