#!/bin/bash

SCRIPTNAME=set_firewall.sh

echo "#!/bin/bash" > $SCRIPTNAME

for IP in {1..254}
do
   echo  "iptables -I INPUT -p tcp --dport 80 -s 192.168.0.$IP -j ACCEPT" >> $SCRIPTNAME

done


chmod u+x $SCRIPTNAME

