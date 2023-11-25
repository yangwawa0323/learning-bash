#!/bin/bash


echo "1. ^backup database"
echo "2. ^clean system tempory files"
echo "3. restart ^tomcat service"
echo "4. restart ^nginx service"


read -p "Please choose a job : " job

case $job in
  1|b|B)
    # job -> 1
    echo "running backup..."
    sleep 2s;;
	   # job -> 2
  2|c|C)
   echo "running clean..."
   sleep 3s;;
  3|t|T)
				# job -> 3
   echo "restarting tomcat..."
   sleep 2s;;
  4|n|N)
	 echo "restarting nginx..."
   sleep 3s;;
  *)
   # job -> 4 , m , k...
   echo "Wrong choose job"
esac 
