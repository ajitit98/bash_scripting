#! /usr/bin/bash 
toolname=$1 
if [[ ${#} -ne 1 ]] ; then 
echo "Script need input"
exit 1 
fi 
if ! command -v ${toolname} 1>/dev/null 2>&1 ; then 
echo "Tool:${toolname} not foundin host"
exit 2 
fi

case  ${toolname} in 
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
;;
esac 
