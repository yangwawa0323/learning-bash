#!/bin/bash


read -p "PLS input your password : " password

pass_len=${#password}
#pass_len=$(expr length $password)

if [ $pass_len -ge 6 ];then
   echo "Length is : $pass_len "
else
   echo "Length must be 6 chars, your input is : $pass_len "
fi

