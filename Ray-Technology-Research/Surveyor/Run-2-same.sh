#!/bin/bash

# Ray Surveyor: compare genomic content between samples

rm -rf RaySurveyorResults

#-show-communication-events \

processes=24

rm RaySurveyorResults.*

mpiexec -n $processes \
	-output-filename RaySurveyorResults \
./Ray \
-k 31 \
-output RaySurveyorResults \
-run-surveyor \
-read-sample-graph ID033401 ./Assembly_2013-10-07/1996/ID033401-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID033401-2 ./Assembly_2013-10-07/1996/ID033401-Ray-2013-10-07/kmers.txt \

