#!/usr/bin/env bash

rclone --bwlimit 70K:off -P sync $HOME/Documents/ gdrive1:/Documents/ --password-command="gopass rclone/config"
rclone --bwlimit 70K:off -P sync $HOME/.pim/ gdrive1:/pim/ --password-command="gopass rclone/config"
rclone --bwlimit 70K:off -P sync $HOME/Documents/ onedrive1:/Documents/ --password-command="gopass rclone/config"
rclone --bwlimit 70K:off -P sync $HOME/Pictures/ onedrive1:/Pictures/ --password-command="gopass rclone/config"
rclone --bwlimit 70K:off -P sync $HOME/.pim/ onedrive1:/pim/ --password-command="gopass rclone/config"
chezmoi add $HOME/.config/rclone/config
