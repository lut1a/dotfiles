#!/usr/bin/env bash
export LBAsW="Total_LBAs_Written" ; sudo smartctl -a $1 | grep -q "$LBAsW" && echo "$(echo "scale=3; $(($(sudo smartctl -a $1 | grep "$LBAsW" | awk '{ print $10 }') * 512)) / 1024 / 1024 / 1024 / 1024" | bc -l) TiB written in total" || echo "Not supported on your storage drive." ; unset LBAsW
