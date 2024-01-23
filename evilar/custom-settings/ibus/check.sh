#!/bin/bash
# Bash Menu Script for Evilar
# Thx to #sudoer on StackOverflow for the Menu Template

echo "================================================="
echo "                 Evilar Int Menu                 "
echo "================================================="
echo "         Check for Chinesse Font Installed"
echo " Check if you can read following text:"
echo ""
echo "  如果你能读到这里，你就能继续"
echo ""
echo ""
echo ""
echo "Continuar?"
echo " 0) Si"
echo " 1) No"

echo "Continuar?:"
read n
case $n in
  0) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/Chinesse%20iBus%20Restore.sh)";;
  1) break;;
  *) echo "invalid option";;
esac
