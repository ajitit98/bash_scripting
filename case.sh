#!/usr/bin/bash 
#Script is used to findout devops toold version instolled in server 


docker --version | cut -d ' ' -f3 | tr -d '+' | tr -d ','
ansible --version | awk 'NR==1'| cut -d ' ' -f3| tr -d ']'
java --version | awk 'NR==1'| cut -d ' ' -f2