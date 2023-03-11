#!/usr/bin/env bash
comm -23 <(pacman -Qneq | sort) <(pacman -Qqg -g gnome | sort | uniq) |
	grep -v 'radeon\|nvidia\|intel\|amd\|linux\|qt5\|gnome' >"$HOME"/bin/archpkgs.txt

pacman -Qmeq >"$HOME"/bin/aurpkgs.txt
#flatpak list --columns=application --app > "$HOME"/bin/fltpkgs.txt
#brew leaves > "$HOME"/bin/brewpkgs.txt
chezmoi add "$HOME"/bin/archpkgs.txt
chezmoi add "$HOME"/bin/aurpkgs.txt
