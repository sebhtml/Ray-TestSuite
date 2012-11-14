rm -rf TestX

# 2^5 = 32
# (2-1)*5 = 5

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-bloom-filter-bits 0 \
-route-messages -connection-type polytope -routing-graph-degree 5 \
-p strept_200_1.fastq.bz2 \
strept_200_2.fastq.bz2 \
-o TestX 


