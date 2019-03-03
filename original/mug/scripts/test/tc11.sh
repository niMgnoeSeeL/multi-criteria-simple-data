#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:30:9:i" outputs/* > trajectory/tj11
cmp --silent $DM_HOME/output/original/mug/oracle/tj11 trajectory/tj11