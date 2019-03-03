#!/bin/bash
cd $1
mkdir -p trajectory
grep "ORBS:17:14:i" outputs/* > trajectory/tj4
cmp --silent $DM_HOME/output/original/mug/oracle/tj4 trajectory/tj4