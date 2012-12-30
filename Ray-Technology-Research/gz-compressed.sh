rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-p strept_200_1.fastq.gz \
strept_200_2.fastq.gz \
-o TestX \
-search DatabaseTest


