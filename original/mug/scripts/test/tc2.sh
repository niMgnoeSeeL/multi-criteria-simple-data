#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:15:5:c" outputs/* > trajectory/tj2
cmp --silent $DM_HOME/output/original/mug/oracle/tj2 trajectory/tj2