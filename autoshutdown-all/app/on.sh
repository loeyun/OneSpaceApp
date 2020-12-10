#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

rm -f /sata/.storage/appblock/php

mkdir -p /sata/public/WWW
chmod 777 /sata/public/WWW

/etc/init.d/S49php-fpm start
