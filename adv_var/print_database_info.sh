#!/bin/bash


declare -A database

database[host]="db.51cloudclass.com"
database[user]="vagrant"
database[port]=33306
database[pass]="sEcR@t"


for key in "${!database[@]}"
do
	echo "Key: $key, Value: ${database[$key]}"

done
