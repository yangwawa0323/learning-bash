#!/bin/bash

NOT_SATISFY=true
SOCKFILE=/tmp/mysql.sock

while ${NOT_SATISFY}
do
  if [ -f $SOCKFILE ];then
    NOT_SATISFY=false
  fi
  echo "$(date): retrying..."
	sleep 2
done

echo "=================="
echo "Ready go"
