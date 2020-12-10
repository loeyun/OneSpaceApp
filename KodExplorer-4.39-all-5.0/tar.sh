#!/bin/sh

pt=`date +%m%d`
vt=4.39-${pt}
pkg=KodExplorer-${vt}-all.app

tar zcf my.tgz app KodExplorer.zip
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz
