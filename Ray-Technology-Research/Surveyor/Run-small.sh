#!/bin/bash

# Ray Surveyor: compare genomic content between samples

rm -rf RaySurveyorResults

#-show-communication-events \

processes=25

mpiexec -n $processes \
-output-filename RaySurveyorResults \
./Ray \
-output RaySurveyorResults \
-run-surveyor \
-read-sample-graph KID119442 kmers.txt.2000000 \

exit

-read-sample-graph KID119442 ./Assembly_2013-10-07/Patients/KID119442-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120069 ./Assembly_2013-10-07/Patients/KID120069-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119957 ./Assembly_2013-10-07/Patients/KID119957-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID120143 ./Assembly_2013-10-07/Environnement/KID120143-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119445 ./Assembly_2013-10-07/Patients/KID119445-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119784 ./Assembly_2013-10-07/Contemporains/KID119784-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119537 ./Assembly_2013-10-07/Patients/KID119537-Ray-2013-10-07/kmers.txt \
-read-sample-graph ID033406 ./Assembly_2013-10-07/1996/ID033406-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119444 ./Assembly_2013-10-07/Patients/KID119444-Ray-2013-10-07/kmers.txt \
-read-sample-graph KID119787 ./Assembly_2013-10-07/Environnement/KID119787-Ray-2013-10-07/kmers.txt \
