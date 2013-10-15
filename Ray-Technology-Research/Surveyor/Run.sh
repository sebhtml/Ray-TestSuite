#!/bin/bash

# Ray Surveyor: compare genomic content between samples

rm -rf RaySurveyorResults

#-show-communication-events \

processes=28

mpiexec -n $processes \
	-output-filename RaySurveyorResults \
./Ray \
-output RaySurveyorResults \
-run-surveyor \
-read-sample-graph ID033401 ./Assembly_2013-10-07/1996/ID033401-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID033406 ./Assembly_2013-10-07/1996/ID033406-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID033399 ./Assembly_2013-10-07/1996/ID033399-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID033398 ./Assembly_2013-10-07/1996/ID033398-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119442 ./Assembly_2013-10-07/Patients/KID119442-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119444 ./Assembly_2013-10-07/Patients/KID119444-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119445 ./Assembly_2013-10-07/Patients/KID119445-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119536 ./Assembly_2013-10-07/Patients/KID119536-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119537 ./Assembly_2013-10-07/Patients/KID119537-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119788 ./Assembly_2013-10-07/Patients/KID119788-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119957 ./Assembly_2013-10-07/Patients/KID119957-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119958 ./Assembly_2013-10-07/Patients/KID119958-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119960 ./Assembly_2013-10-07/Patients/KID119960-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120069 ./Assembly_2013-10-07/Patients/KID120069-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120070 ./Assembly_2013-10-07/Patients/KID120070-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120111 ./Assembly_2013-10-07/Patients/KID120111-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120112 ./Assembly_2013-10-07/Patients/KID120112-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120113 ./Assembly_2013-10-07/Patients/KID120113-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120114 ./Assembly_2013-10-07/Patients/KID120114-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120206 ./Assembly_2013-10-07/Patients/ID120206-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120292 ./Assembly_2013-10-07/Patients/ID120292-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120368 ./Assembly_2013-10-07/Patients/ID120368-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120369 ./Assembly_2013-10-07/Patients/ID120369-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120371 ./Assembly_2013-10-07/Patients/ID120371-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120713 ./Assembly_2013-10-07/Patients/ID120713-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120169 ./Assembly_2013-10-07/Contemporains/ID120169-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID119921 ./Assembly_2013-10-07/Contemporains/ID119921-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120882 ./Assembly_2013-10-07/Contemporains/ID120882-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119784 ./Assembly_2013-10-07/Contemporains/KID119784-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120143 ./Assembly_2013-10-07/Environnement/KID120143-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119787 ./Assembly_2013-10-07/Environnement/KID119787-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120086 ./Assembly_2013-10-07/Environnement/KID120086-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID120329 ./Assembly_2013-10-07/Environnement/ID120329-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120094 ./Assembly_2013-10-07/Environnement/KID120094-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119685 ./Assembly_2013-10-07/Environnement/KID119685-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120090 ./Assembly_2013-10-07/Environnement/KID120090-Ray-2013-10-07/kmers.txt \


