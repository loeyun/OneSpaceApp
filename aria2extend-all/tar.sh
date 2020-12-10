#!/bin/sh

pt=`date +%m%d`
vt=1.0-${pt}
pkg=Aria2Extend-${vt}-All.app

tar zcf my.tgz app config web S60aria2
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz
