#!/bin/bash
# Code and Repo by [+[-GMG-]]
# Script: Create persistent code to restore previously installed libpinyin on to iBus Settings to avoid Puppet Restore

# Check and remove
if [ -f /home/usuario/.config/autostart/CN_Script ]; then rm /home/usuario/.config/autostart/CN_Script;fi
cd /home/usuario/.config/dconf/
if [ -f /home/usuario/.config/dconf/CN_dump.dconf ]; then rm /home/usuario/.config/dconf/CN_dump.dconf;fi
echo "OK"

# Remove Persistency Method on Autostart Directory
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then rm /home/usuario/.config/autostart/CN_dconf_ibus.desktop;fi
echo "OK"
if [ -f /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script ]; then rm /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script; fi
if [ -d /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script ]; then rm -rf /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/; fi
if [ -d /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script ]; then rm -rf /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/; fi
echo "OK"

if [ -f /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v ]; then rm -rf /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v;fi

echo "============================================"
echo "删除中文键盘补丁，重启电脑以应用更改。"
echo "您可以关闭该程序"
echo ""
echo "感谢您测试补丁!"
echo "============================================"
# Fuck <Regional Accesibility> Script 
