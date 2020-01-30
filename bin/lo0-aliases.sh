#!/bin/sh

#
# Aliases for localhost
#

for i in `seq 28 37`;
do
    for j in `seq 1 10`;
    do
        ifconfig lo0 alias 1$i.0.0.$j 255.255.255.0
    done
done