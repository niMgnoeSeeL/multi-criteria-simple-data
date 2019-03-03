#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:24:17:words" outputs/* > trajectory/tj13
cmp --silent $DM_HOME/output/original/wc/oracle/tj13 trajectory/tj13