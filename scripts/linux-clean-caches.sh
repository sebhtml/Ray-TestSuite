#!/bin/bash
# run this as root to clean the cache and free memory
# Author: Sébastien Boisvert
# useful when running velvetg after velveth on a buggy Linux
# distribution

# sync everything, otherwise Linux will not dirty objects
sync

# To free pagecache, dentries and inodes:
echo 3 &> /proc/sys/vm/drop_caches

echo 0 &> /proc/sys/vm/drop_caches
