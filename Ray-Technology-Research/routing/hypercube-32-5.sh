rm -rf hypercube

# (2-1)*5 = 5

mpiexec -output-filename hypercube -n 32 \
 ~/Ray -test-network-only  -o hypercube \
-route-messages -connection-type hypercube -routing-graph-degree 5
