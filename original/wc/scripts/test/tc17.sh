#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:37:11:c" outputs/* > trajectory/tj17
cmp --silent $DM_HOME/output/original/wc/oracle/tj17 trajectory/tj17