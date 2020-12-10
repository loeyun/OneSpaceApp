# Upstart Configuration

This directory contains example configuration files for running verysync under
the "Upstart" service manager on Linux. To have verysync start when you login
place "user/verysync.conf" in the "/home/[username]/.config/upstart/" folder.
To have verysync start when the system boots place "system/verysync.conf"
in the "/etc/init/" folder.
To manually start verysync via Upstart when using the system configuration use:

```
    sudo initctl start verysync
```
