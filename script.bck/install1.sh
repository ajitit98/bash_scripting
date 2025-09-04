#! /usr/bin/bash 

packagename=$1
userid=$(id -u)
if [[ ${userid} -eq 1 ]] 1>/dev/null 2>/dev/null ; then 
	echo "Please run this script using root user"
	exit 1
	 fi 
if [[ ${#} -ne 1 ]] ; then 
	echo "Please provide package name"
	 exit 2 
fi 
if command -v ${packagename} ; then 
        echo "Provide package ${packagename} is already install"
	else 
	apt install ${packagename} -y 1>/dev/null 2>/dev/null 
	yumexitstatus=$?
	if [[ ${yumexitstatus} -eq 0 ]] ; then 
		echo "${packagename} install sucess"
	else 
		echo "${packagename} instollation failed"
	fi 
fi 
