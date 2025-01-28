-- SafriToDuckDuckGo.scpt
--
-- A script to open the front Safari URL in DuckDuckGo.
--
-- Copyright Anthony Arblaster 2025.
--    – Web: https://codebyanthony.com
--    – Mastodon: https://mastodonapp.uk/@aarblaster
--    – GitHub: https://github.com/aarblaster
--
-- MIT Licence
-- Repo: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 1.0
--

-- A Script to open the front tab in Safari in the DuckDuckGo browser.
-- Requires that both browsers be installed.
-- Trigger this script using any method you choose.
-- I personally use Keyboard Maestro.

if application "Safari" is running then
	tell application "Safari"
		set safariURL to URL of front document
	end tell
else
	set safariURL to "https://www.abc.net.au/news"
end if

#Check if Firefox is already running
if application "DuckDuckGo" is running then
	set duckWasRunning to true
else
	set duckWasRunning to false
end if

-- Activate DuckDuckGo
tell application "DuckDuckGo" to activate

-- Check if DuckDuckGo was not running initially and there are open windows
if not duckWasRunning then
	tell application "System Events"
		tell process "DuckDuckGo"
			if (count windows) is greater than 0 then
				# Close the front tab.
				keystroke "w" using {command down}
				#delay 1 # Add a delay to allow the tab to close
			end if
		end tell
	end tell
end if

-- Open the URL in Firefox
tell application "DuckDuckGo"
	open location safariURL
end tell

