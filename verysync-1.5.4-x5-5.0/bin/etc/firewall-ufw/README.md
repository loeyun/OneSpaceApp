Uncomplicated FireWall application preset
===================
Installation
-----------
**Please note:** When you installed verysync using the official deb package, you can skip the copying.

Copy the file `verysync` to your ufw applications directory usually located at `/etc/ufw/applications.d/` (root permissions required).

In a terminal run
```
sudo ufw app update verysync
sudo ufw app update verysync-gui
```
to load the presets.
To allow the verysync ports, run
```
sudo ufw allow verysync
```
If you want to access the web gui from anywhere (not only from localhost), you can also allow the gui port.
This is step is **not** necessary for a "normal" installation!
```
sudo ufw allow verysync-gui
```


Verification
----------
You can verify the opened ports by running
```
sudo ufw status verbose
```
