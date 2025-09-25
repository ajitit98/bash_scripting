#!/usr/bin/bash 
# For loop with array syntex 
declare -a myPac 
declare -A myPac 
myPack=(ansible terraform jenkins docker) 
devopsTool=([containertool]=docker [configurationamangementtool]=ansible [integrationtool]=jenkins)


echo "${myPac[@]}"
echo "${!myPac[@]}"
