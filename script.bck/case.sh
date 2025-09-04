#! /usr/bin/bash
packagename=$1
if [[ ${#} -ne 1 ]] ; then
   echo "Please provide package name as input"
   exit
fi
systemctl status ${packagename} 1>/dev/null 2>&1
stdval=$?
case ${stdval} in
        4)
        echo "${packagename} is not deployed"i
        ;;
        3)
        echo "${packagename} not runnig"
        ;;
        0)
        echo "${packagename} is running"
        ;;
        *)
        echo "Unknown ${packagename} status"
        ;;
esac

