rm -rf hypercube

# 2^4=16
# (2-1)*4=4

mpiexec -output-filename hypercube -n 16 \
 ~/Ray -test-network-only  -o hypercube \
-route-messages -connection-type hypercube -routing-graph-degree 4
