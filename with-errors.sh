rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
-p /home/boiseb01/data-for-system-tests/strept-simulated-errors/strept_200_1.fastq \
/home/boiseb01/data-for-system-tests/strept-simulated-errors/strept_200_2.fastq \
-o TestX \
-search DatabaseTest


