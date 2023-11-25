#!/bin/bash


TMPFILE=/tmp/dailyjob.$$

QUIT="NO"

while [ $QUIT == "NO" ]
do
    dialog --menu "PLS choose one job" 12 50 8 \
           "clear"  "Clear temporary files" \
           "backup"  "Backup the configuration files" \
           "scan"  "Scan the system"  \
    			 "quit"  "Exit the menu"	2> $TMPFILE
    
    ACTION=$(cat $TMPFILE )
    
    
    case $ACTION in
        clear)
    			bash ./jobs/clear.sh	;;
        backup)
          bash ./jobs/backup.sh ;;
        scan)
    			bash ./jobs/scan.sh;;
        quit)
					QUIT="YES" ;;
    esac
done
