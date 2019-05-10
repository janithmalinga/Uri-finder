#!/bin/bash
wget -qO /tmp/$1 $1
cat /tmp/$1 | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | sort -u | grep "$1"
rm /tmp/$1