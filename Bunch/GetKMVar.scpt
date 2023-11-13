-- GetKMVAR.scpt
--
-- A simple script get the variable from KM. 
-- A building block really.
--
-- Copyright Anthony Arblaster 2023
-- 		MIT Licence
-- 		Web: https://github.com/aarblaster/UsefulAppleScripts
--
-- Version 1.0
--

-- Get the value of a KeyboardMaestro variable.
-- Make it available to the AppleScript.

-- set the name of the KM variable to get.
set myKMVar to "ScriptVar"

-- Get the value from KM.
tell application "Keyboard Maestro Engine"
	set myASVar to getvariable myKMVar
end tell