#!/bin/bash

#TODO: Code

#Actualizar Versión
cd /home/usuario/.config/autostart/Modules/Versions/
rm -f /home/usuario/.config/autostart/Modules/Versions/CN_ibus.v
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/CN_ibus.v

notify-send -t 2000 "Parche de Teclado Chino actualizado!"
