#!/usr/bin/env bash

rsync -avh --progress --exclude-from=$HOME/bin/exclude.txt --delete-before /mnt/t5intbkp/$USER/ /run/media/$USER/littlet5/$USER/
