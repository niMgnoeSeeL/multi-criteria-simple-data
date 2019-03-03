#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:26:13:k" test.log > trajectory/tj4
cmp --silent $DM_HOME/output/original/mbe/oracle/tj4 trajectory/tj4