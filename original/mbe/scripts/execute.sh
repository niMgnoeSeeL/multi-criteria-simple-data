#!/bin/sh

cd $1

rm -f test.log execute.log

run() {
    timeout --signal=KILL 0.1 ./mbe $* < /dev/null >> test.log 2>> execute.log
    
    rc=$? 

    if [ $rc -eq 124 -o $rc -eq 137 -o $rc -eq 134 -o $rc -eq 139 ]; then
	    exit 1
    fi
}

run 0 0 
run 1 -1
run 16 -1
run 16 -19
