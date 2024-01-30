#!/bin/bash
sleep 2
exec "/home/usuario/.config/autostart/Modules/Patches/WallpaperHotfix.sh"

while true; do cp '/home/usuario/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml' '/home/usuario/.config/autostart/Modules/Settings/WallpaperHotfix/xfce4-desktop.xml'; sleep $(cat '/home/usuario/.config/autostart/Modules/Settings/WallpaperHotfix/time.z'); done
