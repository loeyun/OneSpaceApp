#!/bin/sh

mountpoint /sata
if [ $? -ne 0 ] ; then
    exit 1
fi

PKGNAME=KodExplorer
INSTALLDIR=/sata/app
mkdir -p ${INSTALLDIR}/${PKGNAME}
tar xf my.tgz -C ${INSTALLDIR}/${PKGNAME}/
chown -R root.root ${INSTALLDIR}/${PKGNAME}
mkdir -p /sata/public/WWW
mkdir -p /sata/public/WWW/KodExplorer
chmod 777 /sata/public/WWW
chmod 777 /sata/public/WWW/KodExplorer
cd /
unzip -o ${INSTALLDIR}/${PKGNAME}/KodExplorer.zip -d /sata/public/WWW/KodExplorer
chmod -R 777 /sata/public/WWW/KodExplorer
rm -rf ${INSTALLDIR}/${PKGNAME}/KodExplorer.zip
sync
exit 0
