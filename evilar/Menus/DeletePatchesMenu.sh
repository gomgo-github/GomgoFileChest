#!/bin/bash
# Bash Menu Script for Evilar

clear
echo "================================================="
echo "                 Evilar DEL Menu                 "
echo "================================================="
echo ""
echo " 1) Borrar Persistencia de Teclado Chino"
echo "     (移除中文键盘补丁)"
echo " 2) Borrar Persistencia del Fondo de Pantalla"
echo "     (移除壁纸补丁)"
echo ""
echo ""
echo ""
echo " 0) Quit"
echo ""
echo ""

echo "Escribe el Número del Programa a ejecutar (0-1):"
read n
case $n in
  0) break;;
  1) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/Uninstaller/CN_ibus/CN_RemovePatch.sh)";;
  2) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/Uninstaller/XFCE_WP/XFCE_WP_Uninstaller.sh)"
  *) echo "invalid option";;
esac
