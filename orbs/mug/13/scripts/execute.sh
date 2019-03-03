#!/bin/bash

cd $1

mkdir -p outputs

code=0

timeout --signal=KILL 0.1 ./mug.exe 4 -4 0 > ./outputs/output0
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./mug.exe 4 4 0 > ./outputs/output1
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./mug.exe -4 4 0 > ./outputs/output2
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

if [[ $code -eq 0 ]]; then
# Extract projected trajectory from the captured output.
    grep -a "ORBS" ./outputs/*
else
    exit -1
fi

# all done.
