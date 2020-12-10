#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

ACTION=`basename $0`

PKGNAME=frps
BINNAME=frps
INSTALLDIR=/sata/app
BLOCKDIR=/sata/.storage/appblock


${INSTALLDIR}/${PKGNAME}/bin/stop.sh
rm -rf ${INSTALLDIR}/${PKGNAME}
rm -f  ${BLOCKDIR}/${PKGNAME}