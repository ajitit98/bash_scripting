#!/usr/bin/bash 
test -r /etc/hosts  && cat /etc/hosts  || echo "Donot have read permission"
# [[ -r /etc/hosts ]]  && cat /etc/hosts  || echo "Donot have read permission"
