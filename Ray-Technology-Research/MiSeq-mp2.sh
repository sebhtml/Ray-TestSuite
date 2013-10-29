#!/bin/bash
#PBS -S /bin/bash
#PBS -N MiSeq-3
#PBS -q qwork@mp2
#PBS -l nodes=4:ppn=1
#PBS -l walltime=1:00:00:00

cd $PBS_O_WORKDIR

module load openmpi_gcc64/1.6.4

rm -rf TestX

NSLOTS=96

mpiexec -n $NSLOTS \
	-output-filename TestX \
./Ray -k 31 \
-p \
MiSeq_Ecoli_MG1655_110527_R1.fastq \
MiSeq_Ecoli_MG1655_110527_R2.fastq \
-write-kmers -write-seeds \
-o TestX \
