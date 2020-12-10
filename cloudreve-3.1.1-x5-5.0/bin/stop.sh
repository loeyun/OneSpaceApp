#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

killall cloudreve

while [ 1 ] ; do
	pidof cloudreve
	if [ $? -ne 0 ] ; then
		break
	fi
	sleep 1
done

