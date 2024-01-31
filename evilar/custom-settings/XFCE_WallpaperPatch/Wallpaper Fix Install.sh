#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore

# Create runtime dirs  
mkdir -p /home/usuario/.config/autostart/Modules/Patches/WallpaperFix

cd /home/usuario/.config/autostart/Modules/Patches/WallpaperFix
if [ -f /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/AutorotationMod ]; then rm /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/AutorotationMod;fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/Modules/Patches/WallpaperFix/AutorotationMod
if [ -f /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/stop_autorotation.sh ]; then rm /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/stop_autorotation.sh;fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/Modules/Patches/WallpaperFix/stop_autorotation.sh

# Download Persistency on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/Autorotation_NoDesktop.desktop ]; then rm /home/usuario/.config/autostart/Autorotation_NoDesktop.desktop;fi
echo "OK"

wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/Autorotation_NoDesktop.desktop
echo "OK"

# Give Permissions to downloaded executable files
chmod a+x /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/AutorotationMod
chmod a+x /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/stop_autorotation.sh

notify-send -t 100 "Parche de Fondo de Pantalla Instalado!"
echo "============================================"
echo "桌面补丁现已安装。现在你可以设置自己的壁纸了"
echo "您可以关闭该程序"
echo ""
echo "欣赏!"
echo "============================================"

# Fuck <Regional Accesibility> Script 
