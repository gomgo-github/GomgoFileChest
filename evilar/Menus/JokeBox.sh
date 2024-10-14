#!/bin/bash
# Bash Menu Script for Evilar

clear
echo "================================================="
echo "                      JOKEBOX                    "
echo "================================================="
echo ""
echo " 1) CDROM"
echo "     (光盘)"
echo ""
echo ""
echo "" #echo " 3) Instalar actualizador automático de Parches"
echo "" #echo "     (补丁自动升级程序)"
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
  1) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/JokeBox/cdrom/install.sh)";;
  *) echo "invalid option";;
esac
