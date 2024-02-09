#!/bin/bash

#Update01 for Old Versions: If CN_Script is on Autostart folder, Version is too old, update to latest modifying path
if [ -f /home/usuario/.config/autostart/CN_Script ];then
mkdir -p /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/
cd /home/usuario/.config/autostart/Modules/Patches/CN_Ibus/
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_Script
cd /home/usuario/.config/autostart/
rm -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop
rm -f /home/usuario/.config/autostart/CN_Script
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/CN_dconf_ibus.desktop
/home/usuario/.config/autostart/Modules/Patches/CN_Ibus/CN_Script
fi

#Actualizar Versión
cd /home/usuario/.config/autostart/Modules/Versions/
rm -f /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/CN_ibus.v

notify-send -t 2000 "Parche de Teclado Chino actualizado!"
