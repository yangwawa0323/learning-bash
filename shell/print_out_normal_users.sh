#!/bin/bash

for LINE in $(cat /etc/passwd | cut -d : -f 1,3) 
do
	### vagrant:1000 ---> $LINE
  USER=$(echo $LINE| cut -d : -f 1)
  USER_ID=$(echo $LINE| cut -d : -f 2)
  if [ $USER_ID -ge 500  ]; then
		 echo "$USER is a normal user"
  else
		 echo "$USER is a system user" 
  fi

done
