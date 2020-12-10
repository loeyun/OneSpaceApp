#! /bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

BINNAME=verysync
pidof ${BINNAME} > /dev/null
	if [ $? -ne 0 ] ; then
		echo -n "off"
	else
		echo -n "on"
	fi