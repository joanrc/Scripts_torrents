echo "#####################################"
echo "##  paramos el servicio            ##"
echo "#####################################"

/etc/init.d/transmission-daemon stop

vi /etc/transmission-daemon/settings.json
##vi /home/debian-transmission/.config/transmission-daemon/settings.json
echo "#####################################"
echo "## volvemos a ponerlo en marcha    ##"
echo "#####################################"

/etc/init.d/transmission-daemon start
