#!/bin/bash

echo "all variables : $@"
echo "no of variables passed : $#"
echo "script name:$0"
echo "current working directiory:$PWD"
echo "home directory of current user:$HOME"
echo "which  user is running the script :$USER"
echo "hostname : $HOSTNAME"
echo "process id of the current shell script:$$"
sleep 60 &
echo "procee id of last background command:$!"