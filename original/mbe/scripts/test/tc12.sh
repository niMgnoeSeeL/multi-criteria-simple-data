#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:61:12:k" test.log > trajectory/tj12
cmp --silent $DM_HOME/output/original/mbe/oracle/tj12 trajectory/tj12