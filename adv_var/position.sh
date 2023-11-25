#!/bin/bash

index=1

for arg  in "$*"
do

		echo "Arg #$index : $arg"
	  #index=$( expr $index + 1 )
    let "index+=1"
done
