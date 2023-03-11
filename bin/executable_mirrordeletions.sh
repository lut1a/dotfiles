#!/usr/bin/env bash
mkdir /run/user/"$UID"/mirrord

comm -23 <(pacman -Qneq | sort) <(pacman -Qqg -g gnome | sort | uniq) |
	grep -v 'radeon\|nvidia\|intel\|amd\|linux\|qt5\|gnome' >/run/user/"$UID"/mirrord/archpkgs.txt

pacman -Qmeq >/run/user/"$UID"/mirrord/aurpkgs.txt
comm -13 "$HOME"/bin/archpkgs.txt /run/user/"$UID"/mirrord/archpkgs.txt | less
comm -13 "$HOME"/bin/aurpkgs.txt /run/user/"$UID"/mirrord/aurpkgs.txt | less
#xargs -a /run/user/"$UID"/mirrord/archpkgs.txt sudo pacman -Rus
rm /run/user/"$UID"/mirrord/archpkgs.txt
rm /run/user/"$UID"/mirrord/aurpkgs.txt
rmdir /run/user/"$UID"/mirrord/
#flatpak list --columns=application --app > "$HOME"/bin/fltpkgs.txt
#brew leaves > "$HOME"/bin/brewpkgs.txt
