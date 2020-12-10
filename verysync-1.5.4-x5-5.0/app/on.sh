#! /bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

PKGNAME=verysync
INSTALLDIR=/sata/app

nohup ${INSTALLDIR}/${PKGNAME}/bin/verysync -home ${INSTALLDIR}/${PKGNAME}/bin/config/ -gui-address 0.0.0.0:8886 >> ${INSTALLDIR}/${PKGNAME}/bin/log/data.log 2>&1 &