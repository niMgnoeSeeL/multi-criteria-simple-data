#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:30:13:k" test.log > trajectory/tj6
cmp --silent $DM_HOME/output/original/mbe/oracle/tj6 trajectory/tj6