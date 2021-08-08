#!/bin/bash

# 6.2 Variables and If statements
output=$HOME/scripts/sys_info.txt
IP=$(ip addr | grep inet | tail -2 | head -1)
exe=$(find /home -type f -perm 777)

if [ $UID != 0 ]
then   
echo "You must run this script using SUDO!"
exit
fi


if [ ! -d $HOME/research ]
   then
   mkdir $HOME/research
fi

if [ -f $output ]
   then 
> $output
fi

if [ -f $output ]
   then
   rm $output
fi

echo -e "Group B $(date)\n" >> $output
echo -e "The username $(uname).\n" >> $output
echo -e "The machine type is $MACHTYPE.\n" >> $output
echo -e "The IP Address is $IP \n" >> $output
echo -e "The hostname for the machine is $HOSTNAME.\n" >> $output
echo -e "DNS info: is $(cat /etc/resolv.conf)\n" >> $output
echo -e "Memory info: $(free -m)\n" >> $output
echo -e "CPU info: $(lscpu)\n" >> $output
echo -e "Disk Usage: $(df -h)\n" >> $output
echo -e "Users currently logged in: $(who)\n" >> $output
echo -e "Executable files: $exe\n" >> $output
echo -e "Top 10 Processes: $(ps aux -m | awk '{print $1, $2, $3, $4, $11}' | head -n 11)" >> $output

sp=('/etc/shadow' '/etc/passwd')
for perm in ${sp[@]}
do
  echo -e "/shadow and /passwd permissions"
  ls -l $perm >> $output
done
