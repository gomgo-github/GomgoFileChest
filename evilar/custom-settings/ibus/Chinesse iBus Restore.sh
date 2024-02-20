#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore

# Download prerequisited libpinyin settings in directory  
cd /home/usuario/.config/dconf/
if [ -f /home/usuario/.config/dconf/CN_dump.dconf ]; then rm /home/usuario/.config/dconf/CN_dump.dconf;fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dump.dconf
bash -c "/usr/bin/dconf load /desktop/ibus/ < /home/usuario/.config/dconf/CN_dump.dconf"
echo "OK"

# Download Persistency Method on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then rm /home/usuario/.config/autostart/CN_dconf_ibus.desktop;fi
echo "OK"
cd /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/
if [ -f /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script ]; then rm /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script; fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dconf_ibus.desktop
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_Script
echo "OK"
chmod a+x /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script
sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/Updaters/CN_ibus/CN_Updater.sh)"


echo "============================================"
echo "修复了中文键盘错误，现在即使重启后也能使用。"
echo "您可以关闭该程序"
echo ""
echo "欣赏!"
echo "============================================"
# Fuck <Regional Accesibility> Script 
