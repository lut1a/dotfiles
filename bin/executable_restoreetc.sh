#!/usr/bin/env bash
#systemctl enable --now NetworkManager.service ModemManager.service avahi-daemon.service bluetooth.service systemd-resolved.service systemd-timesyncd.service systemd-oomd.service gdm.service firewalld.service 
#systemctl enable fstrim.timer
#nvidia only 
#systemctl enable nvidia-suspend.service nvidia-resume.service nvidia-hibernate.service

cp $HOME/etcbkp/locale.conf /etc/locale.conf
cp $HOME/etcbkp/locale.gen /etc/locale.gen
cp $HOME/etcbkp/vconsole.conf /etc/vconsole.conf
cp $HOME/etcbkp/makepkg.conf /etc/makepkg.conf
cp $HOME/etcbkp/pacman.conf /etc/pacman.conf
cp $HOME/etcbkp/pacman.d/mirrorlist /etc/pacman.d/mirrorlist
cp $HOME/etcbkp/systemd/system/batterythreshold.service /etc/systemd/system/batterythreshold.service
cp $HOME/etcbkp/systemd/journald.conf.d/volatile.conf /etc/systemd/journald.conf.d/volatile.conf
cp $HOME/etcbkp/systemd/system.conf.d/timeout.conf /etc/systemd/system.conf.d/timeout.conf
cp $HOME/etcbkp/systemd/resolved.conf.d/cloudflare.conf /etc/systemd/resolved.conf.d/cloudflare.conf
cp $HOME/etcbkp/systemd/zram-generator.conf /etc/systemd/zram-generator.conf
cp $HOME/etcbkp/NetworkManager/conf.d/wifi_backend.conf /etc/NetworkManager/conf.d/wifi_backend.conf
cp $HOME/etcbkp/NetworkManager/conf.d/dns.conf /etc/NetworkManager/conf.d/dns.conf
cp $HOME/etcbkp/iwd/main.conf /etc/iwd/main.conf
ln -rsf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
ln -rsf /dev/null /etc/udev/rules.d/61-gdm.rules
cp $HOME/etcbkp/udev/rules.d/* /etc/udev/rules.d/
mkdir /etc/pacman.d/hooks
mkdir /etc/pacman.d/scripts
cp $HOME/etcbkp/pacman.d/hooks/95-systemd-boot.hook /etc/pacman.d/hooks/95-systemd-boot.hook
cp $HOME/etcbkp/mkinitcpio.conf /etc/mkinitcpio.conf
cp $HOME/etcbkp/mkinitcpio.d/* /etc/mkinitcpio.d/

cp $HOME/etcbkp/modprobe.d/nouveau_blacklist.conf /etc/modprobe.d/nouveau_blacklist.conf
