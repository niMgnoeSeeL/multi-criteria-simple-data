#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:11:5:inword" outputs/* > trajectory/tj2
cmp --silent $DM_HOME/output/original/wc/oracle/tj2 trajectory/tj2