#!/bin/bash
# Bash Menu Script for Evilar

clear
echo ""
echo ""
echo "       _______     _____ _        _    ____   "
echo "      | ____\ \   / /_ _| |      / \  |  _ \  "
echo "      |  _|  \ \ / / | || |     / _ \ | |_) | "
echo "      | |___  \ V /  | || |___ / ___ \|  _ <  "
echo "      |_____|  \_/  |___|_____/_/   \_\_| \_\ "
echo "  "
echo "                    Loading..."
echo ""
echo "                    [+[-GMG-]]"
sleep 2

clear
echo "================================================="
echo "                 Evilar Int Menu                 "
echo "================================================="
echo ""
echo " 1) Instalar Persistencia de Teclado Chino "
echo " "
echo ""
echo ""
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
  1) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/check.sh)";;
  *) echo "invalid option";;
esac
