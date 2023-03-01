#!/usr/bin/env bash

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
cp /etc/NetworkManager/conf.d/wifi_backend.conf "$HOME"/etcbkp/NetworkManager/conf.d/wifi_backend.conf
cp /etc/NetworkManager/conf.d/dns.conf "$HOME"/etcbkp/NetworkManager/conf.d/dns.conf
cp /etc/iwd/main.conf "$HOME"/etcbkp/iwd/main.conf
cp /etc/kernel/cmdline "$HOME"/etcbkp/kernel/cmdline
cp /etc/mkinitcpio.conf "$HOME"/etcbkp/mkinitcpio.conf
cp /etc/mkinitcpio.d/* "$HOME"/etcbkp/mkinitcpio.d/
cp /etc/pacman.d/hooks/95-systemd-boot.hook "$HOME"/etcbkp/pacman.d/hooks/95-systemd-boot.hook

cp /etc/modprobe.d/nouveau_blacklist.conf "$HOME"/etcbkp/modprobe.d/nouveau_blacklist.conf
