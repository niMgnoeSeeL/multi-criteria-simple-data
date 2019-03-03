#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:19:15:c" outputs/* > trajectory/tj5
cmp --silent $DM_HOME/output/original/mug/oracle/tj5 trajectory/tj5