#! /usr/bin/bash
packagename=$1
userid=$(id -u)
#[[ "${userid}"  -ne 0 ]] && { echo "you are not a root user" ; exit ; }
if [[ "${#}" -ne 1 ]] ; then
        echo "Please provide some package name to install"
        exit 1
fi
if [[ "${userid}"  -ne 0 ]] ; then
        echo "you are not a root user" ;
        exit
fi
#command -v "${packagename}" 1>/dev/null 2>/dev/null &&  echo "Package "${packagename}"" alrady install || apt  install "${packagename}" -y

if command -v "${packagename}" 1>/dev/null 2>/dev/null ; then
        echo "Package "${packagename}"" alrady install
else    apt  install "${packagename}" -y
fi
