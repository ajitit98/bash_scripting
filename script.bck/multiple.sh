#! /usr/bin/bash 
packageName=$1 
command -v "${packageName}" 1>/dev/null 2>/dev/null && { echo "Package "${packageName}" is installed" ; "${packageName}" --version ;}
