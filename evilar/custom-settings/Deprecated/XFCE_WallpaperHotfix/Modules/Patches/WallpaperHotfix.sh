#!/bin/bash

# VARIABLES
FILE=/home/usuario/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
FILE_ORIGINAL=/home/usuario/.config/autostart/Modules/Settings/WallpaperHotfix/xfce4-desktop.xml


# FUNCIONES
function check_exit(){
        if [ $? -ne 0 ]; then
                exit
        fi
}

if [ -f $FILE_ORIGINAL ]; then

  	# Close Desktop
        /usr/bin/xfdesktop --quit
        XFCONFD=$(find /usr/lib/ -type f -iname '*xfconfd')
        /usr/bin/killall $XFCONFD

        # Copy xfce backup settings
        /bin/cp $FILE_ORIGINAL $FILE

        # Relaunch Desktop
	$XFCONFD &
        /usr/bin/xfdesktop &
else
	echo "No Wallpaper"
fi
