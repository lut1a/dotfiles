#!/usr/bin/env bash
echo "is it the first time this system is being setup? y/n: "
read firstboo
if [ "firstboo" = "y" ]; then
	sudo systemctl enable --now NetworkManager.service ModemManager.service bluetooth.service systemd-resolved.service systemd-timesyncd.service systemd-oomd.service gdm.service fstrim.timer
else
	echo "doing nothing"
fi
# asus G14
echo "Asus G14? y/n: " 
read asusg14
if [ "$asusg14" = "y" ]; then
	sudo systemctl enable nvidia-suspend.service nvidia-resume.service nvidia-hibernate.service
	echo "nvidia services have been activated"
	sudo cp "$HOME"/etcbkp/modprobe.d/sp1500_tco.conf /etc/modprobe.d/sp1500_tco.conf
else
	echo "doing nothing"
fi

sudo cp "$HOME"/etcbkp/locale.conf /etc/locale.conf
sudo cp "$HOME"/etcbkp/locale.gen /etc/locale.gen
sudo cp "$HOME"/etcbkp/vconsole.conf /etc/vconsole.conf
sudo cp "$HOME"/etcbkp/makepkg.conf /etc/makepkg.conf
sudo cp "$HOME"/etcbkp/pacman.conf /etc/pacman.conf
sudo cp "$HOME"/etcbkp/pacman.d/mirrorlist /etc/pacman.d/mirrorlist
sudo cp "$HOME"/etcbkp/systemd/system/batterythreshold.service /etc/systemd/system/batterythreshold.service
sudo cp "$HOME"/etcbkp/systemd/journald.conf.d/volatile.conf /etc/systemd/journald.conf.d/volatile.conf
sudo cp "$HOME"/etcbkp/systemd/system.conf.d/timeout.conf /etc/systemd/system.conf.d/timeout.conf
sudo cp "$HOME"/etcbkp/systemd/resolved.conf.d/cloudflare.conf /etc/systemd/resolved.conf.d/cloudflare.conf
sudo cp "$HOME"/etcbkp/systemd/zram-generator.conf /etc/systemd/zram-generator.conf
sudo cp "$HOME"/etcbkp/NetworkManager/conf.d/wifi_backend.conf /etc/NetworkManager/conf.d/wifi_backend.conf
sudo cp "$HOME"/etcbkp/NetworkManager/conf.d/dns.conf /etc/NetworkManager/conf.d/dns.conf
sudo cp "$HOME"/etcbkp/iwd/main.conf /etc/iwd/main.conf
sudo ln -rsf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
sudo ln -rsf /dev/null /etc/udev/rules.d/61-gdm.rules
sudo cp "$HOME"/etcbkp/udev/rules.d/* /etc/udev/rules.d/
sudo mkdir -pv /etc/pacman.d/hooks
sudo mkdir -pv /etc/pacman.d/scripts
sudo cp "$HOME"/etcbkp/mkinitcpio.conf /etc/mkinitcpio.conf
sudo cp "$HOME"/etcbkp/mkinitcpio.d/* /etc/mkinitcpio.d/

sudo cp "$HOME"/etcbkp/modprobe.d/nouveau_blacklist.conf /etc/modprobe.d/nouveau_blacklist.conf
