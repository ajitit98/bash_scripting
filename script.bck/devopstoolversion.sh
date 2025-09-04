#! /usr/bin/bash 
 javaVersion=$(java --version | awk 'NR==1' | cut -d ' ' -f2)
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

