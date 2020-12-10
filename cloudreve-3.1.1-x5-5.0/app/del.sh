#! /bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

PKGNAME=cloudreve
INSTALLDIR=/sata/app


${INSTALLDIR}/${PKGNAME}/bin/stop.sh
rm -rf ${INSTALLDIR}/${PKGNAME}
