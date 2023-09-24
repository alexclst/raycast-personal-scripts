#!/usr/bin/env fish

# toggle-desktop-widgets
#
# Toggles desktop widgets on and off.
#
# @raycast.schemaVersion 1
# @raycast.title Toggle Desktop Widgets
# @raycast.mode silent
# @raycast.icon 🖥️
# @raycast.packageName Personal Scripts

if test (defaults read com.apple.WindowManager StandardHideWidgets | tr -d '\r') = "1"; then
	echo "Widgets are visible"
	defaults write com.apple.WindowManager StandardHideWidgets -int 0
else
	echo "Widgets are hidden"
	defaults write com.apple.WindowManager StandardHideWidgets -int 1
end