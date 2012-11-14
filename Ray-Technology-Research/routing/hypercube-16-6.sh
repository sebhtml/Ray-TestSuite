rm -rf hypercube

# 4^2=16
# (4-1)*2=6

mpiexec -output-filename hypercube -n 16 \
 ~/Ray -test-network-only  -o hypercube \
-route-messages -connection-type hypercube -routing-graph-degree 6
