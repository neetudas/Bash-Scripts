#!/usr/bin/bash

set -x

#This script will serach a word in file present in all directories and sub-directories provided

if [[ $# -ne 2 ]]
then
	echo "usage: $0 : Provide a path and a string to be searched"
	exit
fi

path=$1
echo $path
cd $path
`find . -exec grep -i $2 {} \; 2> /dev/null`
