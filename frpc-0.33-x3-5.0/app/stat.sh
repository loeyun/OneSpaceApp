#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

ACTION=`basename $0`

PKGNAME=frpc
BINNAME=frpc
INSTALLDIR=/sata/app
BLOCKDIR=/sata/.storage/appblock


pidof ${BINNAME} > /dev/null

if [ $? -ne 0 ] ; then
	echo -n "off"
else
	echo -n "on"
fi