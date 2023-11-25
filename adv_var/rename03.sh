#!/bin/bash


OLD=$1
NEW=$2
DIR=./files

for FILE in ${DIR}/*.$OLD
do
    #echo "mv $FILE  ${FILE%$OLD}$NEW"
    echo "mv $FILE  ${FILE/$OLD/$NEW}"

done
