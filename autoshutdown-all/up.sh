#!/bin/sh

mountpoint /sata
if [ $? -ne 0 ] ; then
    exit 1
fi

PKGNAME=xiunobbs
INSTALLDIR=/sata/app
mkdir -p ${INSTALLDIR}/${PKGNAME}
tar xf my.tgz -C ${INSTALLDIR}/${PKGNAME}/
chown -R root.root ${INSTALLDIR}/${PKGNAME}
mkdir -p /sata/public/WWW
mkdir -p /sata/public/WWW/xiunobbs
chmod 777 /sata/public/WWW
chmod 777 /sata/public/WWW/xiunobbs
cd /
unzip -o ${INSTALLDIR}/${PKGNAME}/xiunobbs.zip -d /sata/public/WWW/xiunobbs
chmod -R 777 /sata/public/WWW/xiunobbs
rm -rf ${INSTALLDIR}/${PKGNAME}/xiunobbs.zip
sync
exit 0
