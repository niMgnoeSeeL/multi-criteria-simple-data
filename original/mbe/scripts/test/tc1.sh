#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:22:14:j" test.log > trajectory/tj1
cmp --silent $DM_HOME/output/original/mbe/oracle/tj1 trajectory/tj1