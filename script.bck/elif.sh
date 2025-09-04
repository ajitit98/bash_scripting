#! /usr/bin/bash 
packagename=$1 
if [[ ${#} -ne 1 ]] ; then 
	echo "Please provide a package name to install" 
	echo "help"
	echo "<scriptname> <servicename>"
	exit 
fi 
if [[ ${packagename} -eq 4 ]] ; then 
	echo "service ${packagename} not deployed"
elif [[ ${packagename} -eq 3 ]] ; then	
	echo "service ${packagename} not running"
elif 	[[ ${packagename} -eq 0 ]] ; then
	 echo "service ${packagename}  running"
else
         echo "Unknown status"
fi 	 


