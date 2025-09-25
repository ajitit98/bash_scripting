#!/usr/bin/bash 


declare -a myArray
declare -A myArray
myArray=(ansible terraform docker wget) 
devopsTool=([containertool]=docker [configurationamangementtool]=ansible [integrationtool]=jenkins) 
echo "${myArray[@]}"
echo "${!yArray[@]}"


