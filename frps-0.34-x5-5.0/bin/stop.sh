#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

BINNAME=frps
killall $BINNAME
while [ 1 ] ; do
    pidof $BINNAME
    if [ $? -ne 0 ] ; then
        break
    fi
    sleep 1
done

