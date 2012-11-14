rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-bloom-filter-bits 0 \
-p strept_200_1.fastq.bz2 \
strept_200_2.fastq.bz2 \
-o TestX 


