#!/usr/bin/bash


#set -x
#This script will serach a word in file present in all directories and sub-directories provided

if [[ $# -ne 2 ]]
then
	echo -e "usage: $0 : Provide a path and a string to be searched"
	exit
fi

path=$1
echo $path
`cd $path`
#echo `pwd`
#Below command is only to find out the pattern
echo `find -type f ! -path "./.git/*" -exec  grep -iw $2 {} \;`

#Below command will find the files with the pattern
echo `find -type f ! -path "./.git/*" -print0 | xargs -0 grep -iw $2 > output.txt 2> /dev/null`
