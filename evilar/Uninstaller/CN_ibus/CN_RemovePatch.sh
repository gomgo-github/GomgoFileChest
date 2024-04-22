#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore
# Script used only to delete Patch, don't execute with others

# Download prerequisited libpinyin settings in directory  
cd /home/usuario/.config/dconf/
if [ -f /home/usuario/.config/dconf/CN_dump.dconf ]; then rm /home/usuario/.config/dconf/CN_dump.dconf
echo "Deleted Custom dconf!"
else
echo "dconf file doesn't exist :/"
fi

# Download Persistency Method on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then rm /home/usuario/.config/autostart/CN_dconf_ibus.desktop;
echo "Deleted ExecOnBoot: OK"
else
echo "ExecOnBoot file doesn't exist :/"
fi
if [ -f /home/usuario/.config/autostart/CN_Script ]; then rm /home/usuario/.config/autostart/CN_Script;
echo "deleted UpdatableBootScript: OK";
else
echo "UpdatableBootScript doesn't exist"
fi
echo "¡OK!"

#TODO: Change This text
echo "============================================"
echo "移除补丁，移除中文键盘持久性"
echo "祝您愉快!"
echo "============================================"

# Fuck <Regional Accesibility> Script 
