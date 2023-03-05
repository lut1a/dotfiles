#!/usr/bin/env bash
comm -23 <(pacman -Qneq | sort) <(pacman -Qqg -g gnome | sort | uniq) |
	grep -v 'radeon\|nvidia\|intel\|amd\|linux\|qt5\|gnome' |
	tr '\n' ' ' >"$HOME"/bin/manuallyinstalledpkgs.txt

pacman -Qmeq | tr '\n' ' ' >"$HOME"/bin/aurpackages.txt
#flatpak list --columns=application --app > "$HOME"/bin/installedflatpaks.txt
#brew leaves > "$HOME"/bin/brewpackages.txt
chezmoi add "$HOME"/bin/manuallyinstalledpkgs.txt
