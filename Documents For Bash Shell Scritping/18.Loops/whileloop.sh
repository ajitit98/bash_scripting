#!/usr/bin/bash 
# script used to test while loop syntex 


num=1 
while : 
do
echo "hi" 
num=$((num+1)) 
if [[ $num -eq 10 ]] ; then 
break 
fi 
sleep 1 
done 
num=1 
while : 
do 
echo "hi"
num=$((num+1)) 
if [[ $num -eq 10 ]] ; then 
break 
fi 
done 