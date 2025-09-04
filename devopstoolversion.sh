#! /usr/bin/bash 
command -v docker 1>/dev/null 2>&1 && javaVersion=$(java --version | awk 'NR==1' | cut -d ' ' -f2) || javaVersion="Not found"
ansibleVersion=$(ansible --version | awk 'NR==1'|cut -d ' ' -f3 | tr -d ']')
dockerVersion=$(docker --version | cut -d ' ' -f3 | tr -d '+' | tr -d ',')
nginxVersion=$(nginx -version 2>&1 | cut -d ' ' -f3 | tr -d '/nginx')
echo "-------------------------------------"
echo "Devopstool        Version" 
echo javaVersion        "${javaVersion}"
echo ansibleVersion     "${ansibleVersion}"
echo dockerVersion      "${dockerVersion}"
echo nginxVersion       "${nginxVersion}"
echo "-------------------------------------"
