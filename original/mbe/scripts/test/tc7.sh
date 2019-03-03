#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:31:20:j" test.log > trajectory/tj7
cmp --silent $DM_HOME/output/original/mbe/oracle/tj7 trajectory/tj7