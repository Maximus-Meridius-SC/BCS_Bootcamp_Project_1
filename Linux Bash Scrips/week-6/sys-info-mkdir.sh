#!/bin/bash

mkdir ~/research 2> /dev/null

echo "A Quick System Audit Script" >  ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo "" >> ~/research/sys_info.txt
echo "Machine Type Info:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/research/sys_info.txt
echo "Hostname: $(hostname -s) " >> ~/research/sys_info.txt
echo -e "\n777 Files:" >>  ~/research/sys_info.txt
find / -type f -perm 777 >> ~/research/sys_info.txt
echo -e "\nTop 10 Processes" >> ~/research/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt

