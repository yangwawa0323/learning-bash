#!/bin/bash



	###################################################

	TEST_HOST=${1:-www.163.com}
	# ping -c4 www.163.com  1> /dev/null 2> /dev/null 
	#ping -c4 $TEST_HOST  &> /dev/null
	#echo $?
        if ping -c4 $TEST_HOST &> /dev/null ;then
          	echo -e "test $TEST_HOST is \033[32mSucceed\033[m"
        else
          	echo -e "test $TEST_HOST is \033[31mFailed\033[m"
        fi






