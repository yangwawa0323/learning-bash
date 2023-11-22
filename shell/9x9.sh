#!/bin/bash


for i  in {1..9}
do
    for j in {1..9}
    do
    		echo "$i * $j = $(expr $i \* $j )"
    done
done

