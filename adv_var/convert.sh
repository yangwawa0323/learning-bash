#!/bin/bash


SOURCE=database.txt
exec 3< database.txt

NULL="nil"

#for LINE in $( cat $SOURCE )  # bad
while read -u 3 LINE
do
   echo "${LINE//-/$NULL}"
done

exec 3<&-
