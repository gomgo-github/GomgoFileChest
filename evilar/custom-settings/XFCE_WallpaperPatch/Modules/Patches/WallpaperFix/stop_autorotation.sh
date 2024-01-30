#!/usr/bin/env bash

PRODUCT_NAME=$(cat /sys/class/dmi/id/product_name)
TRANSFORM='Coordinate Transformation Matrix'
AUTOROTATION='/usr/local/bin/autorotation'

case $PRODUCT_NAME in
        # HP X360
        "HP ProBook x360 11 G1 EE")

                TOUCHSCREEN="pointer:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep -v Pen | grep ELAN | head -n 1)"
                TOUCHPAD=$(cat /sys/class/input/mouse*/device/name | grep pad | head -n 1)
                PEN="keyboard:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep ELAN | grep Pen | head -n 1)"
                SCREENPORT='eDP-1'
        ;;


        "HP ProBook x360 11 G5 EE")

                TOUCHSCREEN="pointer:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep -v Pen | grep -v Mouse | grep ELAN | head -n 1)"
                TOUCHPAD=$(cat /sys/class/input/mouse*/device/name | grep pad | head -n 1)
                PEN="keyboard:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep ELAN | grep Pen | head -n 1)"
                SCREENPORT='eDP-1'
        ;;

        "HP ProBook x360 11 G9 EE")

                TOUCHSCREEN="pointer:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep -v Pen | grep -v Mouse | grep ELAN | head -n 1)"
                TOUCHPAD=$(cat /sys/class/input/mouse*/device/name | grep pad | head -n 1)
                PEN="keyboard:$(cat /sys/class/input/mouse*/device/name | grep -v pad | grep ELAN | grep Pen | head -n 1)"
                SCREENPORT='eDP-1'
        ;;


	# Lenovo Yoga 11e
	"20LMS00900")
                TOUCHSCREEN='Wacom HID 515F Finger touch'
                TOUCHPAD='Elan Touchpad'
                PEN='Wacom HID 515F Pen stylus'
                SCREENPORT='eDP-1'
        ;;

	"20LNS0QU00")
		TOUCHSCREEN='Wacom HID 515D Finger touch'
		TOUCHPAD='Elan Touchpad'
		PEN='Wacom HID 515D Pen stylus'
		SCREENPORT='eDP-1'
	;;
esac

#Disable Service
	sudo /bin/systemctl stop autorotation.service
	sudo /bin/systemctl disable autorotation.service
	# kill -15 $(pgrep -f "${AUTOROTATION}")
	#notify-send -t 100 "Autorotado deshabilitado"


# Establecer la configuración de la pantalla como posición normal
xrandr --output ${SCREENPORT} --rotate normal
xinput set-prop "${TOUCHSCREEN}" "${TRANSFORM}" 1 0 0 0 1 0 0 0 1
xinput set-prop "${TOUCHPAD}"    "${TRANSFORM}" 1 0 0 0 1 0 0 0 1
xinput set-prop "${PEN}"         "${TRANSFORM}" 1 0 0 0 1 0 0 0 1
