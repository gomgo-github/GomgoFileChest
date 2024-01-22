#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore


cd /home/usuario/.config/dconf/
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dump.dconf
bash -c "/usr/bin/dconf load /desktop/ibus/ < /home/usuario/.config/dconf/CH_dump.dconf"

# "It's not 'bout people being 'Xunta' it's being a Community"
# Fuck <Abalar Regional Accesibility> Script 