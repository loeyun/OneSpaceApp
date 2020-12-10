#!/bin/sh

PKGNAME=verysync
INSTALLDIR=/sata/app

mkdir -p ${INSTALLDIR}/${PKGNAME}
tar xf my.tgz -C ${INSTALLDIR}/${PKGNAME}/
chown -R root.root ${INSTALLDIR}/${PKGNAME}

exit 0
