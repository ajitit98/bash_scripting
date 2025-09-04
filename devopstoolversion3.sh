#! /usr/bin/bash
AWK=/usr/bin/awk
CUT=/usr/bin/cut
TR=/usr/bin/tr
ECHO=/usr/bin/echo
COMMAND=/usr/bin/command
if ${COMMAND} -v java 1>/dev/null 2>$1 ; then
        JAVA=$(${COMMAND} -v java)
        javaVersion=$(${JAVA} --version | ${AWK} 'NR==1' | ${CUT} -d ' ' -f2)
else
        javaVersion="not found"
fi
if ${COMMAND} -v ansible 1>/dev/null 2>&1 ; then
        ANSIBLE=$(${COMMAND} -v ansible)
        ansibleVersion=$(${ANSIBLE} --version |  ${AWK} 'NR==1'|${CUT} -d ' ' -f3 | ${TR} -d ']')
else
        ansibleVersion="not found"
fi
if ${COMMAND} -v docker 1>dev/null 2>&1 ; then
        DOCKER=$(${COMMAND} -v docker)
        dockerVersion=$(${DOCKER} --version | ${CUT} -d ' ' -f3 | ${TR} -d '+' | ${TR} -d ',')
else
        dockerVersion="not found"
fi
if ${COMMAND} -v nginx 1>dev/null 2>&1 ; then
        NGINX=$(${COMMAND} -v nginx)
        nginxVersion=$(${NGINX} -version 2>&1 | ${CUT} -d ' ' -f3 | ${TR} -d '/nginx')
else
        nginxVersion="not found"
fi
${ECHO} "-------------------------------------"
${ECHO} "Devopstool        Version"
${ECHO} javaVersion    "${javaVersion}" 
${ECHO} ansibleVersion     "${ansibleVersion}"
${ECHO} dockerVersion      "${dockerVersion}"
${ECHO} nginxVersion       "${nginxVersion}"
${ECHO} "-------------------------------------"
# echo "/root/devopstoolversion2.sh" | at 5:55 # command to run at command at particular time period
# To remove job atrm (job_id)
