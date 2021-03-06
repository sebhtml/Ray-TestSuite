#PBS -S /bin/bash
#PBS -N Bird-10
#PBS -o Bird-10.o
#PBS -e Bird-10.e
#PBS -A nne-790-ac
#PBS -l walltime=48:00:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 -bynode Ray Ray.conf

