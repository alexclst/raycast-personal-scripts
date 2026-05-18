#!/usr/bin/osascript

# Dependency: This script requires Dia to be installed.

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Dia Incognito
# @raycast.mode silent
# Optional parameters:
# @raycast.icon /Applications/Dia.app/Contents/Resources/AppIcon.icns
# @raycast.packageName Personal Scripts

on run argv
	tell application "Dia"
		if (count of windows) is 0 then return
		set theURL to URL of active tab of front window
	end tell
	-- Open new incognito window and load that URL via UI scripting
	tell application "System Events"
		tell application process "Dia"
			-- bring Dia to front
			set frontmost to true
			delay 0.1
			
			-- New Incognito (Shift + Command + N)
			key down shift
			keystroke "n" using {command down}
			key up shift
			delay 0.5
			
			-- type the URL
			keystroke theURL
			delay 0.3
			
			-- hit return
			key code 36
		end tell
	end tell
end run
