#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:21:13:x" outputs/* > trajectory/tj6
cmp --silent $DM_HOME/output/original/mug/oracle/tj6 trajectory/tj6