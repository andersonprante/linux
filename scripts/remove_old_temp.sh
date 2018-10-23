#!/bin/bash

# CRONTAB
# 0 */6 * * * $PATH/remove_old_temp.sh

find ~/temp/ -mtime +15 -exec rm {} \;

notify-send "cleaned TEMP folder"
