#! /usr/bin/bash
AWK=/usr/bin/awk
CUT=/usr/bin/cut
TR=/usr/bin/tr
ECHO=/usr/bin/echo
COMMAND=/usr/bin/command
LOGS_FILE=/root/devopstol.log/devopsloods
TEE=/usr/bin/tee
${ECHO} "valaditing the java tools"|  ${TEE} -a ${LOGS_FILE}
if ${COMMAND} -v java 1>/dev/null 2>$1 ; then
        JAVA=$(${COMMAND} -v java)
        javaVersion=$(${JAVA} --version | ${AWK} 'NR==1' | ${CUT} -d ' ' -f2)
	${ECHO} "Java version: $(javaVersion)|  ${TEE} -a   ${LOGS_FILE} 
else
        javaVersion="not found"
fi
 ${ECHO} "valaditing the ansible tools" | ${TEE} -a  ${LOGS_FILE}
if ${COMMAND} -v ansible 1>/dev/null 2>&1 ; then
        ANSIBLE=$(${COMMAND} -v ansible)
        ansibleVersion=$(${ANSIBLE} --version |  ${AWK} 'NR==1'|${CUT} -d ' ' -f3 | ${TR} -d ']')
	${ECHO} "ansible version: $(ansibleVersion) |  ${TEE} -a  ${LOGS_FILE}

else
        ansibleVersion="not found"
fi
${ECHO} "valaditing the docker tools" |  ${TEE} -a  ${LOGS_FILE}
if ${COMMAND} -v docker 1>dev/null 2>&1 ; then
        DOCKER=$(${COMMAND} -v docker)
        dockerVersion=$(${DOCKER} --version | ${CUT} -d ' ' -f3 | ${TR} -d '+' | ${TR} -d ',')
	${ECHO} "docker version: $(dockerVersion) |  ${TEE} -a  ${LOGS_FILE}
else
        dockerVersion="not found"
fi
${ECHO} "valaditing the nginx tools" |  ${TEE} -a  ${LOGS_FILE}
if ${COMMAND} -v nginx 1>dev/null 2>&1 ; then
        NGINX=$(${COMMAND} -v nginx)
        nginxVersion=$(${NGINX} -version 2>&1 | ${CUT} -d ' ' -f3 | ${TR} -d '/nginx')
	 ${ECHO} "nginx version: $(nginxVersion)|  ${TEE} -a ${LOGS_FILE}
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
