#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:30:13:inword" outputs/* > trajectory/tj15
cmp --silent $DM_HOME/output/original/wc/oracle/tj15 trajectory/tj15