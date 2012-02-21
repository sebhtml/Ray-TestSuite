#!/bin/bash

clear

for i in $(ls *|grep -v expected|grep -v .sh)
do
	if test -f $i.expected
	then
		echo "">/dev/null
	else
		echo $i
	fi
done > ~/.list

echo "Remaining: $(cat ~/.list|wc -l)"
echo ""
head ~/.list
