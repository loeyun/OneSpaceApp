#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

pidof php-fpm > /dev/null

if [ $? -ne 0 ] ; then
    echo -n "off"
else
    echo -n "on"
fi
