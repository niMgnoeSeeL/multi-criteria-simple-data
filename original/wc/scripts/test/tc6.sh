#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:15:9:characters" outputs/* > trajectory/tj6
cmp --silent $DM_HOME/output/original/wc/oracle/tj6 trajectory/tj6