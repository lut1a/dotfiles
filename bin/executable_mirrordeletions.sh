#!/usr/bin/env bash
#This script will compare the main list of packages maintained
#in the git repo and delete packages missing from the list
#will help maintain identical installations across multiple computers
mkdir /run/user/"$UID"/mirrord

comm -23 <(pacman -Qneq | sort) <(pacman -Qqg -g gnome | sort | uniq) |
	grep -v 'radeon\|nvidia\|intel\|amd\|linux\|pacman\|mesa\|pipewire\|wireplumber\|libpulse\|qt5\|gnome' >/run/user/"$UID"/mirrord/archpkgs.txt

pacman -Qmeq >/run/user/"$UID"/mirrord/aurpkgs.txt
comm -13 "$HOME"/bin/archpkgs.txt /run/user/"$UID"/mirrord/archpkgs.txt > /run/user/"$UID"/mirrord/archpkgs2.txt
xargs -a /run/user/"$UID"/mirrord/archpkgs2.txt sudo pacman -Rus
comm -13 "$HOME"/bin/aurpkgs.txt /run/user/"$UID"/mirrord/aurpkgs.txt > /run/user/"$UID"/mirrord/aurpkgs2.txt
xargs -a /run/user/"$UID"/mirrord/aurpkgs2.txt sudo pacman -Rus
rm /run/user/"$UID"/mirrord/archpkgs.txt
rm /run/user/"$UID"/mirrord/aurpkgs.txt
rm /run/user/"$UID"/mirrord/archpkgs2.txt
rm /run/user/"$UID"/mirrord/aurpkgs2.txt
rmdir /run/user/"$UID"/mirrord/
