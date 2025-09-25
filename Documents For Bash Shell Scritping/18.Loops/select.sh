#!/usr/bin/bash 
# Select loop syntes 
PS3="Entet your choice: " 
select option in ansible jenkins docker kubernetes stop 
do 
case $option in 
ansible) 
systemctl status ansible
;;
jenkins) 
systemctl status jenkins
;; 
docker) 
systemctl status docker
;;
kubernetes) 
systemctl status kubernetes
;;
stop) 
break 
;; 
*) 
echo "Invalid option"
;;
esac
done 



