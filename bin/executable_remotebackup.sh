#!/usr/bin/env bash

rclone --bwlimit 70K:off -P sync $HOME/Documents/ gdrive1:/Documents/
rclone --bwlimit 70K:off -P sync $HOME/.pim/ gdrive1:/pim/
rclone --bwlimit 70K:off -P sync $HOME/Documents/ onedrive1:/Documents/
rclone --bwlimit 70K:off -P sync $HOME/Pictures/ onedrive1:/Pictures/
rclone --bwlimit 70K:off -P sync $HOME/.pim/ onedrive1:/pim/
