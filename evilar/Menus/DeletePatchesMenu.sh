#!/bin/bash
# Bash Menu Script for Evilar

clear
echo "================================================="
echo "                 Evilar DEL Menu                 "
echo "================================================="
echo ""
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then echo " 1) Borrar Persistencia de Teclado Chino";else echo "";fi
if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then echo "     (移除中文键盘补丁)";else echo "";fi
if [ -d /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/ ]; then echo " 2) Borrar Persistencia del Fondo de Pantalla";else echo "";fi
if [ -d /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/ ]; then echo "     (移除壁纸补丁)";else echo "";fi
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo " 0) Quit"
echo ""
echo ""

echo "Escribe el Número del Programa a ejecutar (0, 1, 2...):"
read n
case $n in
  0) break;;
  1) if [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/Uninstaller/CN_ibus/CN_RemovePatch.sh)";else echo "invalid option";fi;;
  2) if [ -d /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/ ]; then sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/Uninstaller/XFCE_WP/XFCE_WP_Uninstaller.sh)";else echo "invalid option";fi;;
  *) echo "invalid option";;
esac
