#!/usr/bin/bash
# Filter server lsit in different stacks



for server_list in $(cat /root/server.txt ) do
        echo "Name      Env"
        echo "--------------start --------------------------"
        serverName=$(echo ${server_list} | cut -d '-' -f1)
        serverEnv=$(echo ${server_list} | cut -d '-' -f8)
        echo "----------------end------------------------"

done
