#!/bin/bash

source /etc/rrdtoolgraphs.conf

IMAGEPREFIX="mem2"
VERTICALLABEL="Bytes"
TITLE="Real Memory Usage: USED - (CACHED+BUFFERED)"

ONE_HOUR_AGO=$(($NOW-3600))
THREE_HOUR_AGO=$(($NOW-10800))
SIX_HOUR_AGO=$(($NOW-21600))
TWELVE_HOUR_AGO=$(($NOW-43200))
ONE_DAY_AGO=$(($NOW-86400))
TWO_DAY_AGO=$(($NOW-172800))
THREE_DAY_AGO=$(($NOW-259200))
SEVEN_DAY_AGO=$(($NOW-604800))

rrdtool graph $IMGDIR/${IMAGEPREFIX}_one_hour.png -s $ONE_HOUR_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last 1 hour)" \
	-v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf"

rrdtool graph $IMGDIR/${IMAGEPREFIX}_three_hour.png -s $THREE_HOUR_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last 3 hours)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf"

rrdtool graph $IMGDIR/${IMAGEPREFIX}_six_hour.png -s $SIX_HOUR_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last 6 hours)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf"

rrdtool graph $IMGDIR/${IMAGEPREFIX}_twelve_hour.png -s $TWELVE_HOUR_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last 12 hours)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf" 

rrdtool graph $IMGDIR/${IMAGEPREFIX}_one_day.png -s $ONE_DAY_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last 24 hours)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf" 

rrdtool graph $IMGDIR/${IMAGEPREFIX}_two_day.png -s $TWO_DAY_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last two days)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf" 

rrdtool graph $IMGDIR/${IMAGEPREFIX}_three_day.png -s $THREE_DAY_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last three days)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf" 

rrdtool graph $IMGDIR/${IMAGEPREFIX}_seven_day.png -s $SEVEN_DAY_AGO -h $GRAPHHEIGHT -w $GRAPHWIDTH -a PNG -t "$TITLE (last seven days)" \
        -v $VERTICALLABEL \
	--base=1024 \
	--alt-autoscale-max \
	--lower-limit=0 \
	DEF:a=$DBDIR/mem2.rrd:realmemusage:AVERAGE \
	LINE2:a#6666FF:"Real Memory Usage" \
	GPRINT:a:LAST:"Current\:%8.0lf"  \
	GPRINT:a:AVERAGE:"Average\:%8.0lf"  \
	GPRINT:a:MAX:"Maximum\:%8.0lf" 

