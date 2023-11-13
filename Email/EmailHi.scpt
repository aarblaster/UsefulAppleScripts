--
-- EmailHi.scpt
--
-- Get the fist name of people in the email ‘To’ field. 
-- With variants for Mail.app and MS Outlook.
-- 
-- Copyright Anthony Arblaster 2023
-- 		MIT Licence
-- 		Web: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 3.0
--

-- The Outlook variation
-- Note this only works if using a seperate window.
-- It will not work if you're replying in the main app.
if application "Microsoft Outlook" is the frontmost application then
	tell application "System Events"
		tell process "Microsoft Outlook"
			tell text field 1 of scroll area 1 of splitter group 1 of front window
				get count of static text
				if result is 1 then
					set theToRecipient to (value of static text 1)
					return word 1 of theToRecipient
				else if result is 2 then
					set the1stToRecipient to (value of static text 1)
					set the2ndToRecipient to (value of static text 2)
					return word 1 of the1stToRecipient & " and " & word 1 of the2ndToRecipient
				else if result is greater than 2 then
					return "all"
				end if
			end tell
		end tell
	end tell

else
	-- the Mail.app variation
	tell application "System Events"
		tell process "Mail"
			tell text field "To:" of window 1
				if UI element 1 exists then
					set theToRecipient to (value of UI element 1)
					if ((count words of theToRecipient) is greater than 0) and (theToRecipient does not contain ",") then
						return word 1 of theToRecipient
					else if ((count words of theToRecipient) is greater than 0) and (theToRecipient contains ",") then
						return word 2 of theToRecipient
					end if
				end if
			end tell
		end tell
	end tell
end if
