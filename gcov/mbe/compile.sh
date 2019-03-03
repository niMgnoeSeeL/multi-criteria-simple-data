#!/bin/sh

cd $1

make > compile.log 2>&1

if [ -f mbe ]; then
    md5sum mbe
else
    exit -1
fi
