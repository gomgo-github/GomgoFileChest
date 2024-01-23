#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore

# Download prerequisited libpinyin settings in directory  
cd /home/usuario/.config/dconf/
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dump.dconf
bash -c "/usr/bin/dconf load /desktop/ibus/ < /home/usuario/.config/dconf/CH_dump.dconf"

# Download Persistency Method on Autostart Directory
cd /home/usuario/.config/autostart
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dconf_ibus.desktop
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_Script
chmod a+x /home/usuario/.config/autostart/CN_Script

# "It's not 'bout people being 'Xunta' it's being a Community"
# Fuck <Regional Accesibility> Script 
