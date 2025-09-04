#! /usr/bin/bash 
toolname=$1
if [[ ${#} -eq 1 ]]; then 
echo "Script needed input"
echo "HELP"
echo "run as <seciptname> <to9olname>"
exit 1 
fi 
if ! command -v ${toolname} 1>/dev/null 2>&1; then 
echo "tool ${toolname} not find in host "
exit 1 
fi 
case ${tooname} in 
java)
java --version | awk 'NR==1' | cut -d ' ' -f2
;; 
ansible) 
ansible --version | awk 'NR==1'|cut -d ' ' -f3 | tr -d ']'
;;
docker)
docker --version | cut -d ' ' -f3 | tr -d '+' | tr -d ','
;;
nginx) 
nginx -version 2>&1 | cut -d ' ' -f3 | tr -d '/nginx'
;; 
*) 
echo "Unknown tools" 
esac


