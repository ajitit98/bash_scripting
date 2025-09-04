#!/usr/bin/bash 
os_version=$i$(/etc/os-release   | awk 'NR==5 {print $1}' | cut -d = -f2 | tr -d '"')
release_version=$(/etc/redhat-release  | cut -d ' ' -f4)
echo "${os_version}"
echo  "${release_version}"
