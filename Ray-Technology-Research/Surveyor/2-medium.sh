#!/bin/bash

name=$1

./Run-medium.sh
mkdir $name-1
mv RaySurveyorResults* $name-1

./Run-medium.sh
mkdir $name-2
mv RaySurveyorResults* $name-2
