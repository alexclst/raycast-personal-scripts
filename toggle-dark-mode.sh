#!/usr/bin/env fish

# toggle-dark-mode
#
# Toggles dark mode
#
# @raycast.schemaVersion 1
# @raycast.title Toggle Dark Mode
# @raycast.mode silent
# @raycast.icon 🌗
# @raycast.packageName Personal Scripts

if test (defaults read -g AppleInterfaceStyle | tr -d '\r') = "Dark"; then
	echo "Dark mode is off"
	osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to false'
else
	echo "Dark mode is on"
	osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'
end