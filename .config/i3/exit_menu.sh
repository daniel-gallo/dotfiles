#!/bin/bash

background='#151515'
foreground='#999999'
accent='#7800f0'

while [ "$select" != "LOCK" -a "$select" != "SUSPEND" -a "$select" != "POWER OFF" -a "$select" != "REBOOT" -a "$select" != "LOG OUT" ]; do
    select=$(echo -e 'LOCK\nSUSPEND\nPOWER OFF\nREBOOT\nLOG OUT' | dmenu -nb $background -nf $foreground -sb $accent -sf '#000000' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Select an option")
    [ -z "$select" ] && exit 0
done
case $select in
    "LOCK")
        /home/daniel/.config/i3/lock.sh
        ;;
    "SUSPEND")
        systemctl suspend
        ;;
    "POWER OFF")
        systemctl poweroff
        ;;
    "REBOOT")
        systemctl reboot
        ;;
    "LOG OUT")
        i3-msg exit
        ;;
    *)
        echo $select >> $HOME/.config/i3/log.txt
        ;;
esac
