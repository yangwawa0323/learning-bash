#!/bin/bash


PRODUCT1=MKSJD20230119SKS
PRODUCT2=SLSSSDFSFSLSLDS20231011ASDDS

echo "$( expr $PRODUCT1 : '[^0-9]*\([0-9]\{8\}\)' )"
echo "`expr $PRODUCT2 : '[^0-9]*\([0-9]\{8\}\)'`"

