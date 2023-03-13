#!/usr/bin/env bash
sudo cp "$HOME"/etcbkp/locale.conf /etc/locale.conf
sudo cp "$HOME"/etcbkp/locale.gen /etc/locale.gen
sudo cp "$HOME"/etcbkp/vconsole.conf /etc/vconsole.conf
sudo cp "$HOME"/etcbkp/makepkg.conf /etc/makepkg.conf
sudo cp "$HOME"/etcbkp/pacman.conf /etc/pacman.conf
sudo cp "$HOME"/etcbkp/pacman.d/mirrorlist /etc/pacman.d/mirrorlist
sudo cp "$HOME"/etcbkp/systemd/system/batterythreshold.service /etc/systemd/system/batterythreshold.service
sudo mkdir -pv /etc/systemd/journald.conf.d
sudo mkdir -pv /etc/systemd/system.conf.d
sudo mkdir -pv /etc/systemd/resolved.conf.d
sudo cp "$HOME"/etcbkp/systemd/journald.conf.d/volatile.conf /etc/systemd/journald.conf.d/volatile.conf
sudo cp "$HOME"/etcbkp/systemd/system.conf.d/timeout.conf /etc/systemd/system.conf.d/timeout.conf
sudo cp "$HOME"/etcbkp/systemd/resolved.conf.d/cloudflare.conf /etc/systemd/resolved.conf.d/cloudflare.conf
sudo cp "$HOME"/etcbkp/udev/rules.d/* /etc/udev/rules.d/
sudo cp "$HOME"/etcbkp/modprobe.d/nouveau_blacklist.conf /etc/modprobe.d/nouveau_blacklist.conf
sudo cp "$HOME"/etcbkp/nftables.conf /etc/nftables.conf
