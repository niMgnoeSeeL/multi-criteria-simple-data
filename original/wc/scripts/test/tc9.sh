#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:18:13:lines" outputs/* > trajectory/tj9
cmp --silent $DM_HOME/output/original/wc/oracle/tj9 trajectory/tj9