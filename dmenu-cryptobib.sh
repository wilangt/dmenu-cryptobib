#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

dmenu -i -l 10 -sb "dark magenta" -p "Cryptobib:" < menu.txt | \
	cut -d';' -f1 | tr -d '\n' | xclip -selection clipboard
