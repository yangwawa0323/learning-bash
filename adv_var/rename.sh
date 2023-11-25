#!/bin/bash

DIR=./files


for FILE in $(find  $DIR  -type f ) 
do
   eval "mv $FILE  ${FILE%.*}.jpg" &> /dev/null
done
