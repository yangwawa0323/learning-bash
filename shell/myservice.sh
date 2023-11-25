#!/bin/bash

PID=/var/tmp/myservice.pid

start(){
  touch $PID
  running=true
	while $running 
  do
	  if [ ! -f $PID ];then
       running=false
    fi
    sleep 3
  done
  echo "service is stopping..."
}


stop(){
   rm $PID
}


# myservice.sh start | stop
case $1 in
   start|stop) 
			"$1" ;;
   status)
     echo "myservice is xxxx";;
   *)
     echo "usage: $0 start | stop | status "
esac

