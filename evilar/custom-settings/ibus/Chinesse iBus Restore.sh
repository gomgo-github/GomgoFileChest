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
if [ -f /home/usuario/.config/autostart/CN_Script ]; then rm /home/usuario/.config/autostart/CN_Script; fi
echo "OK"
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dconf_ibus.desktop
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_Script
echo "OK"

# "It's not 'bout people being 'Xunta' it's being a Community"
# Fuck <Regional Accesibility> Script 
