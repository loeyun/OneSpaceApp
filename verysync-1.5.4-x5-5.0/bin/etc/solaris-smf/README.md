This directory contains an example for running verysync under SMF on
Solaris.

 1. Install the `verysync` binary in a directory called `bin` in your
    home directory.

 2. Edit the `verysync.xml` file in the two places that refer to your
    username and home directory; that is, replace `jb` with your actual
    username and `/home/jb` with your actual home directory location.

 3. Load the service manifest, as a user with the appropriate rights.
    `svccfg import verysync.xml`.
