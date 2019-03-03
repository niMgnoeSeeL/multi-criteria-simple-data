#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:22:17:inword" outputs/* > trajectory/tj11
cmp --silent $DM_HOME/output/original/wc/oracle/tj11 trajectory/tj11