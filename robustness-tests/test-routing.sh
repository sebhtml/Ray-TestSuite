#!/bin/bash

rm -rf popo8

#-verify-message-integrity \
#-show-communication-events \
ranks=16
miniRanks=3

mpiexec -n $ranks ./Ray  $miniRanks -o popo8 \
-test-network-only \
-route-messages &> log

if test -f popo8/Routing/Summary.txt
then
	count=$(grep "polytope" popo8/Routing/Summary.txt|wc -l)
	if test $count -eq 1
	then
		echo "PASS"
		exit
	fi
fi

echo "FAIL"
