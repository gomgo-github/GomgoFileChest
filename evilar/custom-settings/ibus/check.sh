#!/bin/bash
# Bash Menu Script for Evilar
# Thx to #sudoer on StackOverflow for the Menu Template

clear
echo "================================================="
echo "                 Evilar Int Menu                 "
echo "================================================="
echo "         检查是否安装了中文字体"
echo "         Check for Chinesse Font Installed"
echo " Check if you can read following text:"
echo "检查您是否能阅读以下文字："
echo ""
echo "  如果您能读懂，就可以继续。键入 '0'"
echo ""
echo ""
echo ""
echo "继续？"
echo " 0) 继续 (Y)"
echo " 1) 塞拉尔 (N)"

echo "继续？:"
read n
case $n in
  0) sh -c "$(curl -sSL https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/evilar/custom-settings/ibus/Chinesse%20iBus%20Restore.sh)";;
  1) break;;
  *) echo "invalid option";;
esac
