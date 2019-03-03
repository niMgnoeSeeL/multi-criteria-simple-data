#!/bin/bash

cd $1

mkdir -p outputs

code=0

timeout --signal=KILL 0.1 ./wc.exe < $DM_HOME/output/original/wc/inputs/test0 > ./outputs/output0
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./wc.exe < $DM_HOME/output/original/wc/inputs/test1 > ./outputs/output1
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./wc.exe < $DM_HOME/output/original/wc/inputs/test2 > ./outputs/output2
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./wc.exe < $DM_HOME/output/original/wc/inputs/test3 > ./outputs/output3
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

timeout --signal=KILL 0.1 ./wc.exe < $DM_HOME/output/original/wc/inputs/test4 > ./outputs/output4
rc=$?
if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
    code=1
fi

exit ${code};
