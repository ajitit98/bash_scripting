#! /usr/bin/bash
packagename=$1
command -v "${packagename}" && echo "Package "${packagename}" alrady install || apt  install "${packagename}" -y

