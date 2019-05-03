#!/bin/bash
sleep 15s
cd /home/pi/scripts
echo "Subject: IP do RPI 01" > meuIp
hostname -I | cut -d ' ' -f1 >> meuIp
emailDestino=notificacoesmf@gmail.com
#echo " $emailDestino "
ssmtp $emailDestino < meuIp
