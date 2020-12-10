#!/bin/sh

pt=`date +%m%d`
vt=3.1.1-${pt}
pkg=cloudreve${vt}-x5.app

tar zcf my.tgz app bin
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz