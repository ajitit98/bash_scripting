#!/usr/bin/bash
#FFor loop syntex 


for ${variable} in ${@}
do 
if command -v ${variable} 1>/dev/null 2>&1 ; then 
echo "Provide ${variable} is alrady install in host"
else 
echo "Provide ${variable} is not install in host"
yum install -y ${variable} 
fi 
done 