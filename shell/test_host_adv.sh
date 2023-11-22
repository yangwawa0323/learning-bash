#!/bin/bash


if [ $# -eq  1  ];then

	###################################################

	TEST_HOST=$1
	# ping -c4 www.163.com  1> /dev/null 2> /dev/null 
	#ping -c4 $TEST_HOST  &> /dev/null
	#echo $?
        if ping -c4 $TEST_HOST &> /dev/null ;then
          	echo -e "test $TEST_HOST is \033[32mSucceed\033m"
        else
          	echo -e "test $TEST_HOST is \033[31mFailed\033m"
        fi

else
	echo -e "Usage: $0 <host|domain> \nFor example: $0 www.51cloudclass.com\n"	

fi




