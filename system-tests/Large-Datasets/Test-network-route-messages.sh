#PBS -S /bin/bash
#PBS -N Test-network-route-messages-3
#PBS -o Test-network-route-messages-3.o
#PBS -e Test-network-route-messages-3.e
#PBS -A nne-790-ac
#PBS -l walltime=00:02:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 Ray Test-network-route-messages.conf

