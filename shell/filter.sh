#!/bin/bash

DATA_FILE=./data.txt

for  PRODUCT  in $( grep NULL $DATA_FILE | awk '{print $1}' )
do
	echo "Sell zero product: $PRODUCT"
	
done
