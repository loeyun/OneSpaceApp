#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

killall verysync

while [ 1 ] ; do
	pidof verysync
	if [ $? -ne 0 ] ; then
		break
	fi
	sleep 1
done

