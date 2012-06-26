rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
 -amos \
-o TestX 
