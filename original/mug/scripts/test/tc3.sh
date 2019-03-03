#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:16:5:x" outputs/* > trajectory/tj3
cmp --silent $DM_HOME/output/original/mug/oracle/tj3 trajectory/tj3