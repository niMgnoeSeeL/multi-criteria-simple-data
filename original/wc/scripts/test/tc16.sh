#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:36:19:c" outputs/* > trajectory/tj16
cmp --silent $DM_HOME/output/original/wc/oracle/tj16 trajectory/tj16