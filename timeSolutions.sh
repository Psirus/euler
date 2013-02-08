#!/bin/bash
rm times.txt
binaries=bin/*
for i in $binaries
do
    echo "Running $i"
    echo -n "$i: " >> times.txt
    /usr/bin/time -f "%E" -a -o times.txt $i 
done
