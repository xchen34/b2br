#!/bin/bash

#the architecture of your operating system and its kernek version. ARCHITECTURE
arch=$(uname -a)

#the nbr of physical processors. PHYSICAL CPU
pcpu=$(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l)

#the nbr of virtual processors. VIRTUAL CPU
vcpu=$(grep "^processor" /proc/cpuinfo | wc -l)

#the current available RAM and its utilization rate . RAM MEMORY
usedram=$(free -m | awk '$1=="Mem:" {print $3}')
totalram=$(free -m | awk '$1=="Mem:" {printf "%dMB", $2}')
percentram=$(free -m | awk '$1=="Mem:" {printf "%.2f%%", $3/$2*100}')

#the current available disk memory and its utilization rate. DISK MEMORY
useddisk=$(df -m | grep "/dev/" | grep -v "/boot/" | awk '{used+=$3} END {print used}')
totaldisk=$(df -m | grep "/dev/" | grep -v "/boot/" | awk '{total+=$2} END {printf "%.0fGb", total}')
percentdisk=$(df -m | grep "/dev/" | grep -v "/boot/" | awk '{used+=$3} {total+=$2} END {printf "%d%%", used/total*100}')

#current utilization rate of your processors as percentage. CPU LOAD
idlecpu=$(vmstat 1 2 | tail -n 1 | awk '{print $(NF-2)}')
usedcpu=$(expr 100 - $idlecpu)
cpuload=$(printf "%.1f%%" $usedcpu)

#the date and time of last reboot. LAST BOOT
lastboot=$(who -b | awk '{print $3 " " $4}')

#whether LVM is active or not. LVM USE 
lvmuse=$(if [ $(lsblk | grep "lvm" | wc -l) -gt 0 ]; then echo yes; else no; fi)

#nbr of active connections. TCP CONNECTIONS
tcps=$(ss -ta | grep "ESTAB" | wc -l)

#nbr of users using the server. USER COUNT
users=$(users | wc -w)

ip=$(hostname -I)
mac=$(ip link | grep "link/ether" | awk '{print $2}')

#nbr of commands executed with the sudo program.  SUDO LOG
sudocmds=$(journalctl _COMM=sudo | grep "COMMAND" | wc -l)

wall "	#Architecture: $arch
	#CPU physical: $pcpu
	#vCPU: $vcpu
	#Memory Usage: $usedram/$totalram ($percentram)
	#Disk Usage: $useddisk/$totaldisk ($percentdisk)
	#CPU load: $cpuload
	#Last boot: $lastboot
	#LVM use: $lvmuse
	#Connexions TCP: $tcps ESTABLISHED
	#User log: $users
	#Network: IP $ip ($mac)
	#Sudo: $sudocmds cmd"
