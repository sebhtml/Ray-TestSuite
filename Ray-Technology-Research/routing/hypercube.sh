rm -rf hypercube

mpiexec -output-filename hypercube -n 32 ~/Ray -test-network-only -route-messages -connection-type hypercube -o hypercube
