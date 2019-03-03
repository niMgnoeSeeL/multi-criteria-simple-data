#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:24:15:k" test.log > trajectory/tj2
cmp --silent $DM_HOME/output/original/mbe/oracle/tj2 trajectory/tj2