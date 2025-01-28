-- SafriToFirefox.scpt
--
-- A script to open the front Safari URL in Firefox.
--
-- Copyright Anthony Arblaster 2023.
--    – Web: https://codebyanthony.com
--    – Mastodon: https://mastodonapp.uk/@aarblaster
--    – GitHub: https://github.com/aarblaster
--
-- MIT Licence
-- Repo: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 1.1
--

-- A Script to open the front tab in Safari in the Firefox browser.
-- Requires that both browsers be installed.
-- Trigger this script using any method you choose.
-- I personally use Keyboard Maestro.

-- Get the frontmost tab URL in Safari
tell application "Safari"
	set safariURL to URL of front document
end tell

-- Check if Firefox is already running
if application "Firefox" is running then
	set firefoxWasRunning to true
else
	set firefoxWasRunning to false
end if

-- Activate Firefox
tell application "Firefox" to activate

-- Check if Firefox was not running initially and there are open windows
if not firefoxWasRunning then
	tell application "System Events"
		tell process "Firefox"
			if (count windows) is greater than 0 then
				-- Close the front tab in Firefox
				keystroke "w" using {command down}
				delay 1 -- Add a delay to allow the tab to close
			end if
		end tell
	end tell
end if

-- Open the URL in Firefox
tell application "Firefox"
	open location safariURL
end tell

