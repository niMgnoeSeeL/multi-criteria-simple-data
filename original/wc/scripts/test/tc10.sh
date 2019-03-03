#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:20:22:c" outputs/* > trajectory/tj10
cmp --silent $DM_HOME/output/original/wc/oracle/tj10 trajectory/tj10