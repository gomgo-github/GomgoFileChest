#!/bin/bash

#TODO: Code

#Actualizar Versión
cd /home/usuario/.config/autostart/Modules/Versions/
rm -f /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/XFCEWP.v

notify-send -t 2000 "Parche de Fondo de Pantalla actualizado!"
