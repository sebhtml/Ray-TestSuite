#PBS -S /bin/bash
#PBS -N Test-network-standalone-1
#PBS -o Test-network-standalone-1.o
#PBS -e Test-network-standalone-1.e
#PBS -A nne-790-ac
#PBS -l walltime=00:30:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 -bynode Ray \
-route-messages -connection-type polytope -routing-graph-degree 21 \
-o Test-network-standalone-1 \


