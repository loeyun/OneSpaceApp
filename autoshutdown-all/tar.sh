#!/bin/sh

pt=`date +%m%d`
vt=4.0.4-${pt}
pkg=xiunobbs-${vt}-all.app

tar zcf my.tgz app xiunobbs.zip
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz
