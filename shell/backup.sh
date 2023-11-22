#!/bin/bash

LOG_FILE=./backup.log

for FILE in /etc/[mkl]*.conf  /bin/[mkl]*
do
    echo "Backing $FILE up..." >> $LOG_FILE
done
