#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:22:13:c" outputs/* > trajectory/tj7
cmp --silent $DM_HOME/output/original/mug/oracle/tj7 trajectory/tj7