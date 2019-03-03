#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:13:25:c" outputs/* > trajectory/tj4
cmp --silent $DM_HOME/output/original/wc/oracle/tj4 trajectory/tj4