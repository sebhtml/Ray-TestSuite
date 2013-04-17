#PBS -S /bin/bash
#PBS -N Test-network-7
#PBS -o Test-network-7.o
#PBS -e Test-network-7.e
#PBS -A nne-790-ac
#PBS -l walltime=00:30:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 Ray Test-network.conf

