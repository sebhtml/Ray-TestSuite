#!/bin/bash

for test in $(cat tests.txt)
do
	./test.sh &2>1 | tee $test.log
done | tee All.log

echo "PASS:"
grep PASS All.log | wc -l

echo "FAIL:"
grep FAIL All.log | wc -l
