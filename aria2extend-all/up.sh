#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

mkdir -p /sata/app/aria2extend
tar xf my.tgz -C /sata/app/aria2extend
chown -R root.root /sata/app/aria2extend
mount -o remount,rw /

/etc/init.d/S60aria2 stop

mv /etc/init.d/S60aria2 /etc/init.d/S60aria2.backup
cp /sata/app/aria2extend/S60aria2 /etc/init.d/S60aria2

rm -f /sata/.storage/appblock/aria2
/etc/init.d/S60aria2 start

mount -o remount,ro /
exit 0
