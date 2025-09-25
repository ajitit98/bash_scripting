#!/usr/bin/bash 
# Script is used to check log is generated or not 
LOG=log/appMonitorlog

if [[ ! -d /var/log/appMonitorlog ]] ; then
echo "log filer is  not exist on the system"
exit 0
fi
latestFile=$(ls -ltr ${LOG} | awk 'NR==2{print $NF}')

if [[ -z ${latestFile} ]] ; then
echo "No log file generated"
exit 2
fi 

lattest=$(date -r ${LOG}/${latestFile} '+%s')
present=$(date '+%s') 
age=$(lattest - present)) 
ageinhrs=((age/3600)) 

if [[ ${ageinhrs} -gt 24 ]] ; then 
echo "Log file is not generating for morec then 24 hrs" 
fi 

