#!/usr/bin/bash
# Script to check and restart Nginx service

restartNginx  (){ 
    if service nginx status &>dev/null 2>&1 ; then 
    echo "Nginx is now running"
    else 
    echo "Nginx is nor entering init running state"
    fi 

}
if [[ $(id u) -nq 0]] ; then 
echo "Please run this script as root user 
exit 0 
fi 

if servcie nginx status &>dev/null 2>&1 ; then 
echo "Nginx is running" 
else 
echo "Nginx is not running" 
echo "Starting nginx service now" 
service nginx start 
sleep 3 
for each in $(seq 4) ; do 
restartNginx
done 
fi 
