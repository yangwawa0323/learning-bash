#!/bin/bash

############# DEFAULTS
USER=mysql
PASSWORD=mysql
 

while getopts :u:p:h  opt
do
   case $opt in
		 u)
         USER=$OPTARG;;
     p)
         PASSWORD=$OPTARG 
         ;;
     h)
         echo "Usage: $0 [ -u user ] [ -p password ] -h"
         exit 0
         ;;
	 esac
done

echo "connect database by user: $USER , secret is : $PASSWORD"
