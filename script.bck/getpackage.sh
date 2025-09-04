
#! /usr/bin/bash 
PackageName=$1
command -v "${PackageName}" 1>dev/null 2>/dev/null && echo "Package  "${PackageName}" is install" ||  echo "Package  "${PackageName}" is not install"
