cd /home/usuario/.config/autostart/Modules/Patches/WallpaperFix
if [ -f /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/AutorotationMod ]; then rm /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/AutorotationMod;fi
echo "OK"
if [ -f /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/stop_autorotation.sh ]; then rm /home/usuario/.config/autostart/Modules/Patches/WallpaperFix/stop_autorotation.sh;fi
echo "OK"

# Remove Persistency on Autostart Directory
cd /home/usuario/.config/autostart
if [ -f /home/usuario/.config/autostart/Autorotation_NoDesktop.desktop ]; then rm /home/usuario/.config/autostart/Autorotation_NoDesktop.desktop;fi
echo "OK"

# Delete Update Setting
if [ -f /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v ]; then rm /home/usuario/.config/autostart/Modules/Versions/XFCEWP.v;fi
echo "OK"

sudo /bin/systemctl start autorotation.service
sudo /bin/systemctl enable autorotation.service

notify-send -t 2000 "Parche de Fondo de Pantalla Desinstalado!"
echo "============================================"
echo "删除壁纸修补程序，重启计算机"
echo "祝您愉快!"
echo "============================================"

echo "Por favor, reinicia el ordenador para que el ajuste se aplique" 

# Fuck <Regional Accesibility> Script 