
#! /usr/bin/bash
# SDcript is used to dicplay devops tool version installed in server 

     dockerver=$(docker --version | cut -d ' ' -f3 | tr -d '+' | tr -d ',')
     ansiblever=$(ansible --version | awk 'NR==1'| cut -d ' ' -f3 | tr -d ']')
     javaver=$(java -version 2>&1| awk 'NR==1'| cut -d ' ' -f3 | tr -d  '"')
     nginxver=$( nginx -version 2>&1 | cut -d ' ' -f3 | tr -d 'nginx/')
      
      echo "--------------------------------------"
      echo "Toolname         versioninfo"
      echo "Docker            ${dockerver}"
      echo "Ansible           ${ansiblever}"
      echo J"ava              ${javaver}"
      echo "Nginx            ${nginxver}"
      echo "--------------------------------------"



      


