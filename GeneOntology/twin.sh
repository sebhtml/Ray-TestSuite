#!/bin/bash

rm -rf TestX run1 run2

./Launch_Ray-checkpoint.sh
mv TestX.1.* TestX
mv TestX run1

./Launch_Ray-checkpoint.sh
mv TestX.1.* TestX
mv TestX run2
