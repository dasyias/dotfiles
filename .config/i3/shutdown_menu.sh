#!/bin/bash
while [ "$select" != "NO" -a "$select" != "YES" ]; do
    select=$(echo -e 'NO\nYES' | dmenu -nb '#151515' -nf '#999999' -sb '#f00060' -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "You pressed the shut down shortcut. Do you really want to shut down?")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
shutdown
