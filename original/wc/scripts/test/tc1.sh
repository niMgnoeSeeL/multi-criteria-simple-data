#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:10:5:characters" outputs/* > trajectory/tj1
cmp --silent $DM_HOME/output/original/wc/oracle/tj1 trajectory/tj1