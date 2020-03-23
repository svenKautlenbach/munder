#!/bin/bash

input=$1
if [ ! -f $input ]; then
    echo "File not found!"
fi

grep -o "<description>.*</description>" $input | sed -n 's/.*<description>\([^<]*\)<\/description>.*/\1/p'  > descriptions.txt
