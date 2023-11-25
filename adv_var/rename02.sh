#!/bin/bash

DIR=./files


for FILE in ./files/*.* 
do
   eval "mv $FILE  ${FILE,,} -v" 2> /dev/null
done
