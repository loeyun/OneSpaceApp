#!/bin/sh

pt=`date +%m%d`
vt=0.34.3-${pt}
pkg=frps-${vt}-x3.app

tar zcf my.tgz app bin web
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz