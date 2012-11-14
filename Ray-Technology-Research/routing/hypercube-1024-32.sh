rm -rf hypercube

# (32-1)*2 = 62

mpiexec -output-filename hypercube -n 1024 \
 ~/Ray -test-network-only  -o hypercube \
-route-messages -connection-type hypercube -routing-graph-degree 62

