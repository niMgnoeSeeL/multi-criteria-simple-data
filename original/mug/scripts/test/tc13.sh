#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:52:12:i" outputs/* > trajectory/tj13
cmp --silent $DM_HOME/output/original/mug/oracle/tj13 trajectory/tj13