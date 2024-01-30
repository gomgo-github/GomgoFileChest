#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore

# Create runtime dirs  
mkdir -p /home/usuario/.config/autostart/Modules/Patches/
mkdir -p /home/usuario/.config/autostart/Modules/Settings/WallpaperHotfix

cd /home/usuario/.config/autostart/Modules/Patches/
if [ -f /home/usuario/.config/autostart/Modules/Patches/GMG_XfceService.sh ]; then rm /home/usuario/.config/autostart/Modules/Patches/GMG_XfceService.sh;fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperHotfix/Modules/Patches/GMG_XfceService.sh
if [ -f /home/usuario/.config/autostart/Modules/Patches/WallpaperHotfix.sh ]; then rm /home/usuario/.config/autostart/Modules/Patches/WallpaperHotfix.sh;fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperHotfix/Modules/Patches/WallpaperHotfix.sh

cp '/home/usuario/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml' '/home/usuario/.config/autostart/Modules/Settings/WallpaperHotfix/xfce4-desktop.xml'
echo "OK"

# Download Persistency on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/WallpaperHotfix.desktop ]; then rm /home/usuario/.config/autostart/WallpaperHotfix.desktop;fi
echo "OK"

wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperHotfix/WallpaperHotfix.desktop
echo "OK"

# Give Permissions to downloaded executable files
chmod a+x /home/usuario/.config/autostart/Modules/Patches/GMG_XfceService.sh
chmod a+x /home/usuario/.config/autostart/Modules/Patches/WallpaperHotfix.sh

echo "============================================"
echo "桌面补丁现已安装。现在可以设置自定义配置。"
echo "您可以关闭该程序"
echo ""
echo "欣赏!"
echo "============================================"

# Fuck <Regional Accesibility> Script 
