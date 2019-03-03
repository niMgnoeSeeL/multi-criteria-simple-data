#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:18:21:lines" outputs/* > trajectory/tj8
cmp --silent $DM_HOME/output/original/wc/oracle/tj8 trajectory/tj8