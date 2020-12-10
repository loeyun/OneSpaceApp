#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

ACTION=`basename $0`

PKGNAME=frps
BINNAME=frps
INSTALLDIR=/sata/app
BLOCKDIR=/sata/.storage/appblock

rm -f ${BLOCKDIR}/${PKGNAME}
${INSTALLDIR}/${PKGNAME}/bin/start.sh