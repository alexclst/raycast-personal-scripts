#!/usr/bin/env fish

# toggle-stage-manager-widgets
#
# Toggles stage manager widgets on and off.
#
# @raycast.schemaVersion 1
# @raycast.title Toggle Stage Manager Widgets
# @raycast.mode silent
# @raycast.icon 𖭦
# @raycast.packageName Personal Scripts

if test (defaults read com.apple.WindowManager StageManagerHideWidgets | tr -d '\r') = "1"; then
	echo "Widgets are visible"
	defaults write com.apple.WindowManager StageManagerHideWidgets -int 0
else
	echo "Widgets are hidden"
	defaults write com.apple.WindowManager StageManagerHideWidgets -int 1
end