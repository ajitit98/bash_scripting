#!/bin/bash 
command="ps -ax"
process="ps -ax"
eval "$command"| grep "$process"
