#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore
# Script used only to delete Patch, don't execute with others

# Download prerequisited libpinyin settings in directory  
cd /home/usuario/.config/dconf/
if [ -f /home/usuario/.config/dconf/CN_dump.dconf ]; then rm /home/usuario/.config/dconf/CN_dump.dconf
echo "OK"
else
echo "dconf file doesn't exist :/"
fi

# Download Persistency Method on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then rm /home/usuario/.config/autostart/CN_dconf_ibus.desktop;
echo "OK"
else
echo "ExecOnBoot file doesn't exist :/"
fi
if [ -f /home/usuario/.config/autostart/CN_Script ]; then rm /home/usuario/.config/autostart/CN_Script;
echo "OK";
else
echo "UpdatableBootScript doesn't exist"
fi
echo "OK"
chmod a+x /home/usuario/.config/autostart/CN_Script

#TODO: Change This text
echo "============================================"
echo "已从系统中删除中文键盘修复程序"
echo "您可以关闭该程序"
echo ""
echo "再见!"
echo "============================================"
# "It's not 'bout people being 'Xunta' it's being a Community"
# Fuck <Regional Accesibility> Script 
