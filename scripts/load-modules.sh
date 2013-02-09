# load mod /lustre2/clumeq

# colosse.clumeq.ca
if test -d /lustre2/clumeq
then
	module load compilers/gcc/4.7.2
	module load mpi/openmpi/1.6.3_gcc
fi

# corbeil-mp2.rqchp.ca
if test -d /mnt/scratch_mp2
then
	module load gcc/4.7.0
	module load openmpi_gcc64/1.6.3
fi

