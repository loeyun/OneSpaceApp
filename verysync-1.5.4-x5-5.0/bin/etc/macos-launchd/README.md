This directory contains an example for running Verysync in the
background under Mac OS X.

 1. Install the `verysync` binary in a directory called `bin` in your
    home directory.

 2. Edit the `verysync.plist` by replacing `USERNAME` with your actual
    username such as `jb`.

 3. Copy the `verysync.plist` file to `~/Library/LaunchAgents`.

 4. Log out and in again, or run `launchctl load
    ~/Library/LaunchAgents/verysync.plist`.

You probably want to turn off "Start Browser" among the settings to
avoid it opening a browser window on each login.

Logs are in `~/Library/Logs/Verysync.log` and, for crashes and exceptions,
`~/Library/Logs/Verysync-Error.log`.
