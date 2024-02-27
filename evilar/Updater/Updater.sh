#!/bin/bash

# Create Version Folder :
if [ -d /home/usuario/.config/autostart/Modules/Versions/ ]; then echo OK; else mkdir /home/usuario/.config/autostart/Modules/Versions;fi




# Check Installed Modules and if they have Version File, if not, create one with value 0 so updater will update them next time and add latest version;
# Chinese Ibus
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then
    if [ -f /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v ]; then echo OK; else echo "0">/home/usuario/.config/autostart/Modules/Versions/CN_ibus.v;fi;
fi

# XFCE Wallpaper Patch
if [ -f /home/usuario/.config/autostart/Autorotation_NoDesktop.desktop ]; then
    if [ -f /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v ]; then echo OK; else echo "0">/home/usuario/.config/autostart/Modules/Versions/XFCEWP.v;fi;
fi

# Updater
if [ -f /home/usuario/.config/autostart/Updater.desktop ]; then
	if [ -f /home/usuario/.config/autostart/Modules/Versions/Updater.v ]; then echo OK; else echo "0">/home/usuario/.config/autostart/Modules/Versions/Updater.v;fi;
fi




# Detect if Installed Modules are deprecated and Update them
# Chinese Ibus
if [ -f /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v ]; then
	if [ $(cat /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v) -lt $(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/CN_ibus.v) ]; then 
	echo "Deprecated CN_ibus Module";
	sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/Updaters/CN_ibus/CN_Updater.sh)"	
	fi
fi

# XFCE Wallpaper Patch
if [ -f /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v ]; then
	if [ $(cat /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v) -lt $(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/XFCEWP.v) ]; then 
	echo "Deprecated XFCE Wallpaper Patch Module";
	sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/Updaters/XFCEWP/XFCEWP_Updater.sh)"	
	fi
fi

# Updater
if [ -f /home/usuario/.config/autostart/Modules/Versions/Updater.v ]; then
	if [ $(cat /home/usuario/.config/autostart/Modules/Versions/Updater.v) -lt $(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/Updater.v) ]; then 
	echo "Deprecated Updater";
	sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/Updaters/UpdaterPow2.sh)"	
	fi
fi

#notify-send -t 2000 "Notify!"