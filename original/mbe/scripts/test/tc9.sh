#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:34:20:j" test.log > trajectory/tj9
cmp --silent $DM_HOME/output/original/mbe/oracle/tj9 trajectory/tj9