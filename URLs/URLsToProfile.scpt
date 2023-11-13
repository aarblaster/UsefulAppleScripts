-- URLsToProfile.scpt---- A script to open some urls in a specific profile in Safari.---- Copyright Anthony Arblaster 2023-- 		MIT Licence-- 		Web: https://github.com/aarblaster/UsefulAppleScripts---- Version 2.0---- Open the new tab group-- Currently using Keyboard Maestro as the is no-- AppleScript, Shell or shortcuts was to do this.tell application "Keyboard Maestro Engine" to do script "KM_to_open_the_profile_you_want_to_use"-- Get URLS from a string-- The string containing URLs---- CHANGE THESE TO THE URLS YOU WANTset inputString to "https://github.com https://apple.com"-- Regular expression pattern to match URLsset urlPattern to "https?://\\S+"-- Create a list to store the extracted URLsset extractedURLs to {}-- Use the "do shell script" command with "grep" and regular expression to extract URLstry	set extractedURLs to paragraphs of (do shell script "echo " & quoted form of inputString & " | grep -E -o " & quoted form of urlPattern)on error errMsg	display dialog "An error occurred: " & errMsgend try-- Iterate through the extracted urls and open in tabs.tell application "Safari"	-- Get a reference to the front window	set frontWindow to the front window		repeat with aURL in extractedURLs		-- Create a new tab with the URL		make new tab at frontWindow with properties {URL:aURL}	end repeatend tell