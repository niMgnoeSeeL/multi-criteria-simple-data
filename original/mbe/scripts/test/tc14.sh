#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:71:12:j" test.log > trajectory/tj14
cmp --silent $DM_HOME/output/original/mbe/oracle/tj14 trajectory/tj14