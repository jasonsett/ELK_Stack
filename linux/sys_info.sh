#!/bin/bash
echo -e "Group B $(date)\n" >> ~/research/sys_info.txt
echo -e "The username $(uname).\n" >> ~/research/sys_info.txt
echo -e "The machine type is $MACHTYPE.\n" >> ~/research/sys_info.txt
echo -e "The IP Address is $(ip addr | head -n 9 | tail -1)\n" >> ~/research/sys_info.txt
echo -e "The hostname for the machine is $HOSTNAME.\n" >> ~/research/sys_info.txt
echo -e "DNS info: is $(cat /etc/resolv.conf)\n" >> ~/research/sys_info.txt
echo -e "Memory info: $(free -m)\n" >> ~/research/sys_info.txt
echo -e "CPU info: $(lscpu)\n" >> ~/research/sys_info.txt
echo -e "Disk Usage: $(df -h)\n" >> ~/research/sys_info.txt
echo -e "Users currently logged in: $(who)\n" >> ~/research/sys_info.txt
mkdir ~/research
echo -e "Executable files: $(find /home -type f -perm 777)\n" >> ~/research/sys_info.txt
echo -e "Top 10 Processes: $(ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head)" >> ~/research/sys_info.txt
