#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:12:5:words" outputs/* > trajectory/tj3
cmp --silent $DM_HOME/output/original/wc/oracle/tj3 trajectory/tj3