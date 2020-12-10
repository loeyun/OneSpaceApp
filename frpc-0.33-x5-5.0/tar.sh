#!/bin/sh

pt=`date +%m%d`
vt=0.33-${pt}
pkg=frpc-${vt}-x5.app

tar zcf my.tgz app bin web
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz