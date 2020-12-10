#!/bin/sh

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

PKGNAME=frpc
BINNAME=frpc
INSTALLDIR=/sata/app

mountpoint /sata
if [ $? -ne 0 ] ; then
    exit
fi

if [ -f /sata/.storage/appblock/${PKGNAME} ] ; then
    exit
fi

pidof ${BINNAME}
if [ $? -eq 0 ] ; then
    exit
fi

nohup ${INSTALLDIR}/${PKGNAME}/bin/${BINNAME} -c  ${INSTALLDIR}/${PKGNAME}/bin/frpc.ini > /dev/null 2>&1 &
