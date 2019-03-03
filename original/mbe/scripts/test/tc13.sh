#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:66:12:k" test.log > trajectory/tj13
cmp --silent $DM_HOME/output/original/mbe/oracle/tj13 trajectory/tj13