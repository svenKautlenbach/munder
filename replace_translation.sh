#!/bin/bash

input=$1
if [ ! -f $input ]; then
    echo "File not found!"
fi

declare -i c=0
polish_text=""

while read p; do
	let "++c"
	if [[ $(( c  %  2)) == 0 ]]; then
		sed -i '' s/"$polish_text"/"$p"/g munder.xml
	else
		polish_text=$p
	fi
done < $input

echo "We did $(( c / 2 )) translations"
