#!/bin/sh

# This file is part of the ORBS distribution.
# See the file LICENSE.TXT for more information.

# The execution script.
#
# This script is called from ORBS to actually execute the system.
#
# This script will have to run the system with any input that belong
# to the criterion.  It also has to generate the trajectory which is
# usually just a print of the value of the criterion. Therefore it
# usually has to just filter the output with respect to a given marker
# as passed in parameter $1.

cd $1

rm -f test.log execute.log

# The actual execution. 
# Capture the output and any error message.
# Also handle timeouts.
run() {
    timeout --signal=KILL 1 ./mbe $* < /dev/null >> test.log 2>> execute.log
    
    rc=$? 

    if [ $rc -eq 124 ]; then
	echo TIMEOUT
	exit 0
    fi
    if [ $rc -eq 137 ]; then
	echo TIMEOUT
	exit 0
    fi
    if [ $rc -eq 134 ]; then
	echo ABORT
	exit 0
    fi
    if [ $rc -eq 139 ]; then
	echo SEGMENTATION FAULT
	exit 0
    fi
}

run 0 0 
run 1 -1
run 16 -1
run 16 -19

# extract projected trajectory
grep "ORBS" test.log

# all done.


