#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:31:13:j" test.log > trajectory/tj8
cmp --silent $DM_HOME/output/original/mbe/oracle/tj8 trajectory/tj8