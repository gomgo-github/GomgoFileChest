#!/bin/bash
# Bash Menu Script for Evilar
# Thx to #sudoer on StackOverflow for the Menu Template

clear
echo "================================================="
echo "                 Evilar Int Menu                 "
echo "================================================="
echo "                      壁纸补丁 "
echo "            Parche para Fondos de Pantalla"
echo ""
echo " El siguiente parche permite poner Fondos de Pantalla"
echo " personalizados sin que se eliminen al reiniciar."
echo ""
echo " 以下补丁允许您设置自定义壁纸，"
echo " 而不会在重启时移除。"
echo ""
echo "Continuar?"
echo " 0) Sí"
echo " 1) No"

echo "Continuar?:"
read n
case $n in
  0) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/XFCE_WallpaperPatch/Wallpaper%20Fix%20Install.sh)";;
  1) break;;
  *) echo "invalid option";;
esac
