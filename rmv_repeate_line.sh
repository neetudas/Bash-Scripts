#!/usr/bin/bash

if [[ $# -ne 1 ]]
then
	echo "Usage: $0 : Enter a file to remove repeated lines "
	exit
fi

`sort $1 | uniq > sorted_file`
`touch ./output`
`awk NF ./sorted_file > ./output`
`rm -f ./sorted_file`

