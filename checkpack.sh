#!/usr/bin/bash 
# Script is user to check pacakage is install or not if not install package 
if [[ $(id -u) -ne 0 ]] ; then 
echo "Please run this script as root user" 
exit 0 
fi 
if PackageName() { if command -v $(reqPack) &>/dev/null 2>&1 ; then 
echo "$(reqPack) is already install in host" 
else 
echo "$(reqPack) is not install in host" 
echo "Installing $(reqPack) ...." 
apt install $(reqPack) -y 
fi
} 


for each in $(@); do 
PackageName
 done 