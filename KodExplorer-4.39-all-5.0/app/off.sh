#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

/etc/init.d/S49php-fpm stop

if [ $# -eq 0 ] ; then
    touch /sata/.storage/appblock/php
fi
