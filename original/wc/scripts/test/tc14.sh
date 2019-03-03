#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:25:17:inword" outputs/* > trajectory/tj14
cmp --silent $DM_HOME/output/original/wc/oracle/tj14 trajectory/tj14