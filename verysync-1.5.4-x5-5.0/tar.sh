#!/bin/sh

pt=`date +%m%d`
vt=1.5.4-${pt}
pkg=verysync${vt}-x5.app

tar zcf my.tgz app bin
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz