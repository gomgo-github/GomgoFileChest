#!/bin/bash
FILE=/home/usuario/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
FILE_ORIGINAL=/home/usuario/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml.ORIGINAL

# FUNCIONES
function check_exit(){
        if [ $? -ne 0 ]; then
                exit
        fi
}

if [ -f $FILE_ORIGINAL ]; then
        # Kill Desktop
        /usr/bin/xfdesktop --quit
        XFCONFD=$(find /usr/lib/ -type f -iname '*xfconfd')
        /usr/bin/killall $XFCONFD

        # Restore File
        /bin/cp $FILE_ORIGINAL $FILE

        # Reboot Desktop
	$XFCONFD &
        /usr/bin/xfdesktop &
else
        /usr/bin/zenity --warning --width=450 --title="Non existe o arquivo" --text="Non existe o arquivo de configuración cos valores por defecto"
fi
