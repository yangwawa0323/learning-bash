#!/bin/bash


echo "1. backup database"
echo "2. clean system tempory files"
echo "3. restart tomcat service"

read -p "Please choose a job : " job

if [ "$job" == "1" ];then
   # job -> 1
   echo "running backup..."
   sleep 2s
else
  # job -> 2, 3, m, k
	if [ "$job" == "2" ];then
	   # job -> 2
     echo "running clean..."
     sleep 3s
  else
     # job -> 3 , m , k ...
     if [ "$job" == "3"  ];then
				# job -> 3
        echo "restarting tomcat..."
        sleep 2s
     else
        # job -> 4 , m , k...
       echo "Wrong choose job"
     fi
  fi
fi
