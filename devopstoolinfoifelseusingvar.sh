
#! /usr/bin/bash
# SDcript is used to dicplay devops tool version installed in server 
CUT=/usr/bin/cut
TR=/usr/bin/tr
AWK=/usr/bin/awk
ECHO=/usr/bin/echo
COMMAND=/usr/bin/command
LOG_FILE=/tmp/devopstoolsinfo.log
     ${ECHO} "Validating devops tools Docker  info" >> ${LOG_FILE}
    if  ${COMMAND} -v  docker 1>/dev/null 2>&1 ; then 
        DOCKER=$(${COMMAND} -v  docker)
        dockerver=$(${DOCKER} --version | ${CUT} -d ' ' -f3 | ${TR} -d '+' | ${TR} -d ',') 
        ${ECHO} "Display docker  tools version info ${dockerver}" >> ${LOG_FILE}
        else 
        dockerver="Not found" 
    fi 
        ${ECHO} "Validating devops tools Ansible  info" >> ${LOG_FILE}
    if  ${COMMAND} -v ansible  1>/dev/null 2>&1 ; then 
         ANSIBLE=$(${COMMAND} -v ansible) 
        ansiblever=$(${ANSIBLE} --version | ${AWK} 'NR==1'| ${CUT} -d ' ' -f3 | ${TR} -d ']') 
        ${ECHO} "Validating devops ansible tools version info ${ansiblever}" >> ${LOG_FILE}
        else 
        ansiblever="Not found"
    fi    
     ${ECHO} "Validating devops tools Java  info" >> ${LOG_FILE} 
    if ${COMMAND} -v java 1>/dev/null 2>&1  ; then 
        JAVA=$(${COMMAND} -v java)
      javaver=$(${JAVA} -version 2>&1| ${AWK} 'NR==1'| ${CUT} -d ' ' -f3 | ${TR} -d  '"') 
      ${ECHO} "Validating devops java tools version info ${javaver}" >> ${LOG_FILE}
      else 
      javaver="Not found"
    fi 
     ${ECHO} "Validating devops tools Nginx  info" >> ${LOG_FILE}  
    if ${COMMAND} -v nginx 1>/dev/null 2>&1 ; then 
        NGINX=$(${COMMAND} -v nginx )
       nginxver=$( ${NGINX} -version 2>&1 | ${CUT} -d ' ' -f3 | ${TR} -d 'nginx/') 
       ${ECHO} "Validating devops nginx tools version info ${nginxver}" >> ${LOG_FILE}
       else 
       nginxver="Not found"
    fi    
      
      ${ECHO} "--------------------------------------"
      ${ECHO} "Toolname         versioninfo"
      ${ECHO} "Docker            ${dockerver}"
      ${ECHO} "Ansible           ${ansiblever}"
      ${ECHO} "Java              ${javaver}"
      ${ECHO} "Nginx             ${nginxver}"
      ${ECHO} "--------------------------------------"
           


