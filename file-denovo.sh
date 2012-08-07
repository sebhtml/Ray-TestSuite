rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX  ~/Ray file-denovo.conf
