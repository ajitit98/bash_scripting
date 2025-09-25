#!/usr/bin/bash 
# get option in while loop syntex 


while getopts vsf opt 
do 
case ${opt} in 
v) 
docker --version 
;; 
s) 
systemctl status docker 
;; 
f) 
df -h 
;;
\?) 
echo "Invalid option"
;; 
esac 
done 