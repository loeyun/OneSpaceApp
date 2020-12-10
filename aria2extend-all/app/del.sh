#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

/etc/init.d/S60aria2 stop

mount -o remount,rw /
rm /etc/init.d/S60aria2
mv /etc/init.d/S60aria2.backup /etc/init.d/S60aria2
mount -o remount,ro /

rm -f /sata/.storage/appblock/aria2
rm -rf /sata/app/aria2extend
/etc/init.d/S60aria2 start

