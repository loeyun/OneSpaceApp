#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

ACTION=`basename $0`

PKGNAME=frpc
BINNAME=frpc
INSTALLDIR=/sata/app
BLOCKDIR=/sata/.storage/appblock

rm -f ${BLOCKDIR}/${PKGNAME}
${INSTALLDIR}/${PKGNAME}/bin/start.sh