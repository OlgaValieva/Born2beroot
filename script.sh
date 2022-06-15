wall "
#Architecture: $(uname -a)
#CPU physical: $( cat /proc/cpuinfo| grep "physical id" | wc -l)
#vCPU: $(cat /proc/cpuinfo | (grep "^processor" | wc -l))
#Memory Usage: $(free -m | awk '{if (FNR == 2){print$7"/"$2" MB "}}')($(free -m | awk '{if (FNR ==2){printf("%.2f\n"), $3/$2*100}}')%)
#Disk Usage: $(df -H | awk '{if(FNR == 4){printf("%.1f/%.1f Gb (%d%%)",$3, $2, $5)}}')
#CPU load: $(top -b -n 1 | grep ^%Cpu | awk '{printf("%.1f%%"), $2 + $3 +$4 + $6}')
#Last boot: $(who -b | awk '{print $3" " $4}')
#LVM use: $(if [ $(lsblk | grep lvm | wc -l) -eq 0 ]
then
    echo "no"
else
    echo "yes"
fi
)
#Connections TCP: $(netstat -t | grep tcp |wc -l) ESTABLISHED
#User log: $(who | awk '{ print $1 }' | sort -u | wc -l)
#Network: IP $(hostname -I)($(ip link show | awk ' $1 ==  "link/ether" {print $2}'))
#Sudo: $(grep -c 'COMMAND' /var/log/sudo/sudo.log) cmd "
"monitoring.sh" 20L, 891B                                     20,46       Внизу

