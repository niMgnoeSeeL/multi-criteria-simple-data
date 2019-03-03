#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:15:22:characters" outputs/* > trajectory/tj5
cmp --silent $DM_HOME/output/original/wc/oracle/tj5 trajectory/tj5