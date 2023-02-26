#!/bin/env bash

rclone --bwlimit 70K:off -P sync onedrive1:/Pictures/ $HOME/Pictures/
