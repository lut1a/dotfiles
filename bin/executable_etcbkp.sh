#!/usr/bin/env bash
mkdir -pv "$HOME"/etcbkp/pacman.d/hooks/
mkdir -pv "$HOME"/etcbkp/systemd/system/
mkdir -pv "$HOME"/etcbkp/systemd/journald.conf.d/
mkdir -pv "$HOME"/etcbkp/systemd/resolved.conf.d/
mkdir -pv "$HOME"/etcbkp/systemd/system.conf.d/
mkdir -pv "$HOME"/etcbkp/udev/rules.d/
mkdir -pv "$HOME"/etcbkp/modprobe.d/

cp /etc/locale.conf "$HOME"/etcbkp/locale.conf
cp /etc/locale.gen "$HOME"/etcbkp/locale.gen
cp /etc/makepkg.conf "$HOME"/etcbkp/makepkg.conf
cp /etc/pacman.conf "$HOME"/etcbkp/pacman.conf
cp /etc/pacman.d/mirrorlist "$HOME"/etcbkp/pacman.d/mirrorlist
cp /etc/systemd/journald.conf.d/volatile.conf "$HOME"/etcbkp/systemd/journald.conf.d/volatile.conf
cp /etc/systemd/system.conf.d/timeout.conf "$HOME"/etcbkp/systemd/system.conf.d/timeout.conf
cp /etc/systemd/resolved.conf.d/cloudflare.conf "$HOME"/etcbkp/systemd/resolved.conf.d/cloudflare.conf
cp /etc/systemd/zram-generator.conf "$HOME"/etcbkp/systemd/zram-generator.conf
cp /etc/systemd/system/batterythreshold.service "$HOME"/etcbkp/systemd/system/batterythreshold.service
cp /etc/vconsole.conf "$HOME"/etcbkp/vconsole.conf
cp /etc/udev/rules.d/* "$HOME"/etcbkp/udev/rules.d/
cp /etc/modprobe.d/nouveau_blacklist.conf "$HOME"/etcbkp/modprobe.d/nouveau_blacklist.conf

chezmoi add "$HOME"/etcbkp/
