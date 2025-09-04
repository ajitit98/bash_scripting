#! /usr/bin/bash 
packagename=$1 
if [[ ${#} -eq 1 ]] ; then 
	echo "Please provide a package name as input" 
	exit
fi 

	service ${packagename} status 1>/dev/null 2>&1
if [[ ${packagename} -eq 4 ]] ; then 
	echo "servcie is not deployed"
elif [[ ${packagename} -eq 3 ]] ; then	
	echo "Service not runnig"
elif  [[ ${packagename} -eq 0 ]] ; then 
        echo "Servcie is running"
else 
       echo "Unknown status" 
fi        
