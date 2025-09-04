#! /usr/bin/bash
if command -v java 1>/dev/null 2>$1 ; then 
       	javaVersion=$(java --version | awk 'NR==1' | cut -d ' ' -f2)
else 
	javaVersion="not found"
fi 
if command -v ansible 1>/dev/null 2>&1 ; then 
	ansibleVersion=$(ansible --version | awk 'NR==1'|cut -d ' ' -f3 | tr -d ']')
else 
	ansibleVersion="not found"
fi 
if command -v docker 1>dev/null 2>&1 ; then 
	dockerVersion=$(docker --version | cut -d ' ' -f3 | tr -d '+' | tr -d ',')
else 
	dockerVersion="not found"
fi 
if command -v nginx 1>dev/null 2>&1 ; then 
	nginxVersion=$(nginx -version 2>&1 | cut -d ' ' -f3 | tr -d '/nginx')
else 
	nginxVersion="not found"
fi 
echo "-------------------------------------"
echo "Devopstool        Version"
echo javaVersion        "${javaVersion}"
echo ansibleVersion     "${ansibleVersion}"
echo dockerVersion      "${dockerVersion}"
echo nginxVersion       "${nginxVersion}"
echo "-------------------------------------"

