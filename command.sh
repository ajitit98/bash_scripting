

#!/usr/bin/bash 
echo "Checking for nginx installation..."
command -v nginx 1>/dev/null 2>/dev/null  &&  { echo "Nginx is installed" ;  nginxVer=$(nginx -version 2>&1 | cut -d ' ' -f3 | cut -d '/' -f2) ;  echo "Nginx installed version : "${nginxVer}""; }
{echo "Nginx is not instolled in host" ; echo "Nginx is instolllaing now" ; apt install nginx -y ; echo "Nginx is sinstolled in host" ; nginxVer=$(nginx -version 2>&1  | cut -d ' ' -f3 | cut -d '/' -f2); echo "Nginx installed version : "${nginxVer}"; }



