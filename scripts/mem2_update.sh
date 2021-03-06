#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/mem2.rrd

MEMFREE=`sar -r 0 | tail -1 | awk '{ print $3 }'`
MEMUSED=`sar -r 0 | tail -1 | awk '{ print $4 }'`
BUFFERS=`sar -r 0 | tail -1 | awk '{ print $6 }'`
CACHED=`sar -r 0 | tail -1 | awk '{ print $7 }'`

let MEMFREE=MEMFREE*1024
let MEMUSED=MEMUSED*1024
let BUFFERS=BUFFERS*1024
let CACHED=CACHED*1024
REAL_USAGE=`expr $MEMUSED - $BUFFERS - $CACHED`

rrdtool update $DBFILE N:$REAL_USAGE
