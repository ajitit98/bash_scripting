#!/usr/bin/bash 
#Script is used to test if servcie is running ar not 
serviceName=nginx
process=$(ps -ef | grep -i ${serviceName} | grep -v grep | wc -l ) 
if [[ ${process} -eq 0 ]] ; then 
echo "Service ${serviceName} is not up and running"
else 
echo "Service ${serviceName} is up and running"
fi    