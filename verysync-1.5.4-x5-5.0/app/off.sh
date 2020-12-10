#! /bin/bash
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/local/bin

ps -ef |grep verysync |awk '{print $2}'|xargs kill -9