#!/bin/bash

# CRONTAB
# 0 */6 * * * $PATH/remove_old_temp.sh

find ~/temp/ -mtime +15 -exec rm {} \;

echo "$(date +%Y\/%m\/%d\ %H:%M:%S) Limpou pasta ~/temp/" >> /tmp/limpezaTEMP.log
