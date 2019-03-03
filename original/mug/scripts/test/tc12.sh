#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:41:9:i" outputs/* > trajectory/tj12
cmp --silent $DM_HOME/output/original/mug/oracle/tj12 trajectory/tj12