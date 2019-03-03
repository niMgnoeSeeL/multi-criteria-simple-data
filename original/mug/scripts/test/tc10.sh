#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:26:20:x" outputs/* > trajectory/tj10
cmp --silent $DM_HOME/output/original/mug/oracle/tj10 trajectory/tj10