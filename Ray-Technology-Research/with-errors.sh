rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-p strept_200_1.fastq \
strept_200_2.fastq \
-o TestX \
-search DatabaseTest


