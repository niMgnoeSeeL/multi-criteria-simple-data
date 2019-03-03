#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:16:13:c" outputs/* > trajectory/tj7
cmp --silent $DM_HOME/output/original/wc/oracle/tj7 trajectory/tj7