#!/bin/bash

for test in $(cat tests.txt|grep -v '#')
do
	echo "Running test $test $(./test.sh) "
done | tee results

pass=$(grep PASS results|wc -l)
fail=$(grep FAIL results|wc -l)
all=$(($pass + $fail))

echo "== Robustness tests =="
echo "PASS: $pass / $all"
echo "FAIL: $fail / $all"
