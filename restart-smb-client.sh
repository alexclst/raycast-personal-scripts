#!/bin/bash

# Script to restart the SMB client on macOS.
#
# UNTESTED, haven't run into problem since writing the script.
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Restart SMB Client
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 💾
# @raycast.packageName Personal Scripts

killall -HUP NetAuthSysAgent