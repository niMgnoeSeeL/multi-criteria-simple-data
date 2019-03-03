#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:24:9:i" outputs/* > trajectory/tj9
cmp --silent $DM_HOME/output/original/mug/oracle/tj9 trajectory/tj9