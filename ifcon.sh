#!/usr/bin/bash
filename=$1

if ! [[ "${#}" -eq 1 ]] ; then 
echo "please provide  file name"
 exit 
 fi 
 if[[ -e "${filename}" ]]  ; then 
  echo "File not exist"

[[ "${#}" -eq 1 ]] || { echo "please provide  file name" ; exit ; }
[[ -e "${filename}" ]] ||{ echo "File not exist" ; exit ;}
[[ -r "${filename}" ]] && cat "${filename}" || echo "File donot have read permission"
