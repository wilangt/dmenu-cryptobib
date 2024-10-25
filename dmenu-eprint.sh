#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

IACRURL=$(grep "EPRINT" menu.txt | cut -d ":" -f 2- | \
	dmenu -i -l 10 -sb DarkBlue -p "EPRINT:" | cut -d'%' -f2 | tr -d ' ' | tr -d '\n')

if [ ! -z $IACRURL ] 
then 
	open $IACRURL.pdf 
fi
