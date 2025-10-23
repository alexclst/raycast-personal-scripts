#!/usr/bin/env fish

# dnsclear
#
# Clears the DNS cache
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clear DNS Cache
# @raycast.mode silent
# Optional parameters:
# @raycast.icon 🌎
# @raycast.packageName Personal Scripts

sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "DNS cache cleared"