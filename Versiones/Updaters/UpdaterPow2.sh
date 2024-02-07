#!/bin/bash

#TODO: Code

#Actualizar Versión
cd /home/usuario/.config/autostart/Modules/Versions/
rm -f /home/usuario/.config/autostart/Modules/Versions/Updater.v
wget https://raw.githubusercontent.com/gomgo-github/GomgoFileChest/Evilar/Versiones/release/Updater.v

notify-send -t 2000 "Actualizador de Parches actualizado!"
