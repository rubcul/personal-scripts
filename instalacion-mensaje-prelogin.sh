#!/bin/bash

#Probado en Debian 9 y Ubuntu server 18.04

#Crear script prelogin y dar permisos
touch /etc/prelogin.sh
chmod +x /etc/prelogin.sh

#Contenido script prelogin
echo "#!/bin/bash"
echo "cat /etc/issue.net > /etc/issue" >> /etc/prelogin.sh
echo "echo " " >> /etc/issue" >> /etc/prelogin.sh
echo "echo "PC de Rubén" >> /etc/issue" >> /etc/prelogin.sh
echo "echo " " >> /etc/issue" >> /etc/prelogin.sh
echo "echo "Hostname: $(hostname)" >> /etc/issue" >> /etc/prelogin.sh
echo "echo " " >> /etc/issue" >> /etc/prelogin.sh
echo "echo "IP: $(hostname -I)" >> /etc/issue" >> /etc/prelogin.sh
echo "echo " " >> /etc/issue" >> /etc/prelogin.sh

#Crear script /etc/rc.local (autoejecucion) y dar permisos
touch /etc/rc.local
chmod +x /etc/rc.local

#Contenido archivo
echo "#!/bin/bash"  >> /etc/rc.local
echo "/etc/prelogin.sh" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local

#Reinicio del equipo
sleep 5
systemctl reboot

exit 0
