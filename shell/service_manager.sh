#!/bin/bash

TMPFILE=/tmp/service_manager.$$

dialog --checklist  "PLS choose the service(s) to start at boot time" 12 50 10 \
    "atd"  "Deffered schedule service"  off \
    "crond"  "crontab service"  on \
    "lvm2-monitor" "LVM monitor service" on  2> $TMPFILE

SERVICE_LIST=$( cat $TMPFILE  )

for SRV in $SERVICE_LIST
do 
	echo "systemctl enable $SRV"
done





#rm $TMPFILE
