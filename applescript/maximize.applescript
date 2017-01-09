# 
# Window maximize script
#
# For multiple monitors this only works for maximizing windows on the main display
# where 2nd display is arranged to the left of main display.
# It uses the fact that the origin of the disaply under this arrangement are negative and origin of main display is {0, 0}.
#

set windowTitle to ""
tell application "System Events"
	set frontApp to first application process whose frontmost is true
	set frontAppName to name of frontApp
	tell process frontAppName
		tell (1st window whose value of attribute "AXMain" is true)
			set windowTitle to value of attribute "AXTitle"
		end tell
	end tell
end tell

tell application "Finder"
	set _b to bounds of window of desktop
	set _w to item 3 of _b
	set _h to item 4 of _b
end tell
tell application frontAppName to set the bounds of window windowTitle to {0, 0, _w, _h}