rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-read-write-checkpoints CHECK \
 -p strept_200_1.fastq strept_200_2.fastq \
-o TestX 
