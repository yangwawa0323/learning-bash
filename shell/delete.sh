#!/bin/bash

source ./lib.sh

source ./inputbox01.sh

#FILENAME=$1


if [ -f $FILENAME ];then
    dialog --title "Delete file"  --yesno "Are U sure to delete $FILENAME  " \
    10 50
    RESULT=$?
    case $RESULT in
       0)
    			rm $FILENAME && \
          showmsg "the file $FILENAME is deleted successfully."  ;;
       1|255)
    		  showmsg "you cancelled." ;;
       #255)
    	 #		showmsg "you press ESC.";;
    esac

else
	showmsg "the file $FILENAME is not exists"

fi
