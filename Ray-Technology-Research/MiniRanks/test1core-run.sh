rm -rf popo5
mpiexec -n 4 ./Ray -mini-ranks-per-rank 2 -test-network-only -o popo5 
