#!/bin/bash

yum install rsync -y

if [ ! -e "mkdir /root/SYNC" ]; then

mkdir /root/SYNC

else
echo

fi

clear
echo
echo " DEFINA O LOCAL DE ORIGEM E O LOCAL DE DESTINO DOS DADOS"
echo
echo " LOCAL DE ORIGEM, Exemplo: /dados"
read -p " Local de origem: " origem; echo
echo " LOCAL DE DESTINO, Exemplo: /root/bucket"
read -p " Local de destino: " destino; echo

rsync -aXS $origem/. $destino/.


echo "rsync -aXS $origem/. $destino/." > /root/SYNC/sync_data
cd /root/SYNC/; chmod 775 sync_data

clear
echo
echo " DEFINA O TEMPO DE SINCRONISMO EM MINUTOS"
echo
echo " Exemplo para 1 min: 1"
read -p " Tempo em Minutos: " min; echo

echo "*/$min * * * * /root/SYNC/sync_data" >> /var/spool/cron/root
