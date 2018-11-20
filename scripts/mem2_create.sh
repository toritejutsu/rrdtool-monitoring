#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/mem2.rrd

NOW=`date +%s`

if [ -e "$DBFILE" ]
then
	echo "file exists: $DBFILE"
else
	rrdtool create $DBFILE -s 60 -b N \
		DS:realmemusage:GAUGE:300:U:U \
		RRA:AVERAGE:0.5:1:10080	\
		RRA:MIN:0.5:60:1 \
		RRA:MAX:0.5:60:1 \
		RRA:MIN:0.5:180:1 \
		RRA:MAX:0.5:180:1 \
		RRA:MIN:0.5:360:1 \
		RRA:MAX:0.5:360:1 \
		RRA:MIN:0.5:720:1 \
		RRA:MAX:0.5:720:1 \
		RRA:MIN:0.5:1440:1 \
		RRA:MAX:0.5:1440:1 \
		RRA:MIN:0.5:2880:1 \
		RRA:MAX:0.5:2880:1 \
		RRA:MIN:0.5:4320:1 \
		RRA:MAX:0.5:4320:1 \
		RRA:MIN:0.5:10080:1 \

	echo "file created: $DBFILE"
fi
