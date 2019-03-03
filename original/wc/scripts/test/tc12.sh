#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:24:25:words" outputs/* > trajectory/tj12
cmp --silent $DM_HOME/output/original/wc/oracle/tj12 trajectory/tj12