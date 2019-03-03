#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:30:20:k" test.log > trajectory/tj5
cmp --silent $DM_HOME/output/original/mbe/oracle/tj5 trajectory/tj5