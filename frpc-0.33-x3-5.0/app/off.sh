#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

ACTION=`basename $0`

PKGNAME=frpc
BINNAME=frpc
INSTALLDIR=/sata/app
BLOCKDIR=/sata/.storage/appblock

${INSTALLDIR}/${PKGNAME}/bin/stop.sh

if [ $# -eq 0 ] ; then
	touch ${BLOCKDIR}/${PKGNAME}
fi