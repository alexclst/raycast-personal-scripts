#!/usr/bin/env fish

# myip
#
# Gets the ip addresses of this computer
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My IP Address
# @raycast.mode fullOutput
# Optional parameters:
# @raycast.icon 🌎
# @raycast.packageName Personal Scripts

# get ip addresses
set pub (curl -s https://wp.tenseg.net/scripts/ip.php)
set eth (ipconfig getifaddr en0)
set wifi (ipconfig getifaddr en1)

# echo those that are not empty
if test -n "$pub"
	echo "Public: $pub"
end
if test -n "$eth"
	echo "Ethernet: $eth"
end
if test -n "$wifi"
	echo "WiFi: $wifi"
end