#!/usr/bin/bash

#set -x
#This script will replace a give string by another given string in all text files in a given folder and put in in a new folder.
#$1= folder path wher files are present
#$2=old variable to be replaced
#$3=new variable to be replaced with

PATH=$1
#date=`date`
`cd $PATH`
`/usr/bin/rm -r output.txt`
`/usr/bin/ls -l | /usr/bin/awk 'NF>1 {print $NF}' > output.txt` 
#`mkdir replaced"_$date"`
while read line
do
#`touch $linei"_new"`
`/usr/bin/sed "s/\<$2\>/$3/g" $line >> ./replaced/$line 2> /dev/null`
done < output.txt
