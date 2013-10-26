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
-read-sample-graph KID119442 ./Assembly_2013-10-07/Patients/KID119442-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120069 ./Assembly_2013-10-07/Patients/KID120069-Ray-2013-10-07/kmers.txt \

