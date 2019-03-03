#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:26:20:k" test.log > trajectory/tj3
cmp --silent $DM_HOME/output/original/mbe/oracle/tj3 trajectory/tj3