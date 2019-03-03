#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:14:5:i" outputs/* > trajectory/tj1
cmp --silent $DM_HOME/output/original/mug/oracle/tj1 trajectory/tj1