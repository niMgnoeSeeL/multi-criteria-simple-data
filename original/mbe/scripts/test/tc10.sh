#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:39:8:j" test.log > trajectory/tj10
cmp --silent $DM_HOME/output/original/mbe/oracle/tj10 trajectory/tj10