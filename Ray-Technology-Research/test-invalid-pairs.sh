rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
./Ray \
-detect-sequence-files Legionella-pneumophila \
-o TestX 
