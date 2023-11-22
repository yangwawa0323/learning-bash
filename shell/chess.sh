#!/bin/bash
for ROW in {1..9}
do
    for COL in {1..9}
    do
        POSITION=$(expr $ROW + $COL )
        if [ $(expr $POSITION % 2 ) -eq 0 ];then
          # white block
          echo -e -n "\033[47m  \033[0m"
        else
          # black block
          echo -e -n "\033[40m  \033[0m"
        fi
    done
    echo 

done
