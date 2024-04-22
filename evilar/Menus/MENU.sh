#!/bin/bash
# Bash Menu Script for Evilar

clear
echo "================================================="
echo "                 Evilar INT Menu                 "
echo "================================================="
echo ""
echo " 1) Instalar persistencia de Teclado Chino"
echo "     (安装中文键盘补丁)"
echo " 2) Instalar parche de Fondos de Pantalla"
echo "     (壁纸补丁)"
echo ""
echo ""
if [ -d /home/usuario/.config/autostart/Modules/ ] || [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then echo " 9) Menu de desinstalación de Parches (卸载补丁菜单)"; else echo "";fi
echo " 0) Quit"
echo ""
echo ""

echo "Escribe el Número del Programa a ejecutar (0, 1, 2...):"
read n
case $n in
  0) break;;
  1) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/check.sh)";;
  2) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/check.sh)";;
  9) if [ -d /home/usuario/.config/autostart/Modules/ ] || [ -f /home/usuario/.config/autostart/CN_dconf_ibus.desktop ]; then sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/check.sh)";else echo "invalid option";fi;;
  *) echo "invalid option";;
esac
