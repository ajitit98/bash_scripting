#!/usr/bin/bash 
filename=$1
if ! [[ "${#}" -eq 1 ]] ; then 
       	echo "please provide  file name" ;
       	exit 
fi 
if ! [[ -e "${filename}" ]] ; then 
	echo "File not exist" ; 
	exit 
fi 
if [[ -r "${filename}" ]] ; then 
       	cat "${filename}" ; 
else 
	echo "File donot have read permission"
	 fi 
