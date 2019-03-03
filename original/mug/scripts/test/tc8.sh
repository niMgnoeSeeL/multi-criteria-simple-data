#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:24:15:i" outputs/* > trajectory/tj8
cmp --silent $DM_HOME/output/original/mug/oracle/tj8 trajectory/tj8