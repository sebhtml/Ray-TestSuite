#!/bin/bash
#PBS -N Parallel-IO-9
#PBS -o Parallel-IO-9.o
#PBS -e Parallel-IO-9.e
#PBS -A nne-790-ac
#PBS -l walltime=00:05:00
#PBS -l nodes=16:ppn=8
#PBS -q default

cd $PBS_O_WORKDIR

source /rap/nne-790-ab/software/NGS-Pipelines/LoadModules.sh

#mpiexec -n 32 date

#ulimit -c unlimited

#file ./Parallel-IO
#ls -lh ./Parallel-IO
#whoami

#ldd ./Parallel-IO

mpiexec -n 128 ./Parallel-IO
