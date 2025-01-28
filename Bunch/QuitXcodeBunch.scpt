-- QuitXcodeBunch.scpt
--
-- Quit Xcode, stopping running tasks.
--
-- Copyright Anthony Arblaster 2023.
--    – Web: https://codebyanthony.com
--    – Mastodon: https://mastodonapp.uk/@aarblaster
--    – GitHub: https://github.com/aarblaster
--
-- MIT Licence
-- Repo: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 1.0
--

tell application "Xcode"
	stop workspace document 1
end tell
delay 3
tell application "Xcode"
	quit
end tell