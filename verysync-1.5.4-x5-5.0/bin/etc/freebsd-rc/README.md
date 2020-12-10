This directory contains an example for running verysync with a `rc.d` script in FreeBSD.

* Install `verysync` in `/usr/local/bin/verysync`.
* Copy the `verysync` rc.d script in `/usr/local/etc/rc.d/verysync`.
* To automatically start `verysync` at boot time, add the following line to `/etc/rc.conf`:
```
verysync_enable=YES
```
* Optional configuration options are:
```
verysync_home=</path/to/verysync/config/dir>
verysync_log_file=</path/to/verysync/log/file>
verysync_user=<verysync_user>
verysync_group=<verysync_group>
```
See the rc.d script for more informations.
