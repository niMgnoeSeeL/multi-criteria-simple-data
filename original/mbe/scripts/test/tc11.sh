#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:51:8:k" test.log > trajectory/tj11
cmp --silent $DM_HOME/output/original/mbe/oracle/tj11 trajectory/tj11