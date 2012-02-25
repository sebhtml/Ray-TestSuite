rm -rf TestX

mpiexec -n 30 -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
-o TestX \
-search DatabaseTest 
