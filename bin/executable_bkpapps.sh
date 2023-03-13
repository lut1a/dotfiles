#!/usr/bin/env bash
comm -23 <(pacman -Qneq | sort) <(pacman -Qqg -g xfce4 | sort | uniq) |
	grep -v 'radeon\|nvidia\|intel\|amd\|vulkan\|linux\|pacman\|pipewire\|mesa\|libpulse\|wireplumber\|lib32-libpulse\|mutter\|qt5\|gnome' >"$HOME"/bin/archpkgs.txt

pacman -Qmeq >"$HOME"/bin/aurpkgs.txt
#flatpak list --columns=application --app > "$HOME"/bin/fltpkgs.txt
#brew leaves > "$HOME"/bin/brewpkgs.txt
chezmoi add "$HOME"/bin/archpkgs.txt
chezmoi add "$HOME"/bin/aurpkgs.txt
