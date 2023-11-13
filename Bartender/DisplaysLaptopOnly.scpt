-- DisplaysLaptopOnly.scpt
--
-- A simple script to return `TRUE` when laptop screen is the only one.
-- Useful with Bartender Profiles
--
-- Copyright Anthony Arblaster 2023
-- 		MIT Licence
-- 		Web: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 1.0
--

tell application "System Events"
	set monitorCount to count of desktops
	if monitorCount > 1 then
		return false
	else
		tell application "Finder"
			set monitorSize to bounds of window of desktop
		end tell
		if monitorSize = {0, 0, 1512, 982} then
			return true
		else
			return false
		end if
	end if
end tell