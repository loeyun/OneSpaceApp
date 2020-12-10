#!/bin/sh
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

    nohup /sata/app/frpc/bin/frpc -c  /sata/app/frpc/bin/frpc.ini > /dev/null 2>&1 &
    sleep 2
    pidof frpc
    if [ $? -eq 0 ]; then
		exit
    fi

for ((i=0; i<50; ++i))
do
    ping -c 4 www.baidu.com > /dev/null 2>&1
    if [ $? -eq 0 ] ; then
        nohup /sata/app/frpc/bin/frpc -c  /sata/app/frpc/bin/frpc.ini > /dev/null 2>&1 &
    fi
    sleep 2
    pidof frpc
    if [ $? -eq 0 ]; then
		break
    fi
done



