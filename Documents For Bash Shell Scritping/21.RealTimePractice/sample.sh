#!/usr/bin/bash 
# Script is used to test whather app is generate log or not 
LOFFILE=/home/applog





if [[ ! -d ${LOFFILE} ]] ; then 
echo "Log Directory is not exit in server" 
exit 1 
fi 

latest=$(ls -ltr ${LOFFILE} | awk 'NR==2{print $NF}')
if [[ -z ${latesst} ]] ; then 
echo "NO log file generated" 
exit 2 
fi 

