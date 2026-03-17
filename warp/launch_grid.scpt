-- Usage: osascript launch_grid.scpt /Users/lorenphillips/Development/backend
-- Creates a 2-row x 3-col grid, bottom row runs csp (Claude)

on run argv
	set targetDir to item 1 of argv
	set d to 0.6

	-- Activate Warp and wait for it to be frontmost
	tell application "Warp" to activate
	delay 2

	-- Safety check: confirm Warp is frontmost before sending ANY keystrokes
	tell application "System Events"
		set frontApp to name of first application process whose frontmost is true
		if frontApp is not "stable" and frontApp is not "Warp" then
			error "Warp is not frontmost (got " & frontApp & "). Aborting to prevent typing into wrong app."
		end if
	end tell

	tell application "System Events" to tell process "stable"
		-- New window
		keystroke "n" using command down
		delay 1.5

		-- === BUILD GRID: 2 rows x 3 cols ===

		-- Split horizontally (top/bottom). Cursor moves to bottom pane.
		keystroke "d" using {command down, shift down}
		delay d

		-- Bottom pane: split right -> 2 cols. Cursor in bottom-right.
		keystroke "d" using command down
		delay d

		-- Bottom-right: split right -> 3 cols. Cursor in bottom-rightmost.
		keystroke "d" using command down
		delay d

		-- Navigate up to top row
		key code 126 using {command down, option down}
		delay d

		-- Top pane: split right -> 2 cols. Cursor in top-right.
		keystroke "d" using command down
		delay d

		-- Top-right: split right -> 3 cols. Cursor in top-rightmost.
		keystroke "d" using command down
		delay d

		-- === CD IN TOP ROW (right to left) ===

		-- Top-right (already here)
		keystroke "cd " & targetDir
		key code 36
		delay 0.3

		-- Top-middle
		key code 123 using {command down, option down}
		delay d
		keystroke "cd " & targetDir
		key code 36
		delay 0.3

		-- Top-left
		key code 123 using {command down, option down}
		delay d
		keystroke "cd " & targetDir
		key code 36
		delay 0.3

		-- === CD + CSP IN BOTTOM ROW (left to right) ===

		-- Bottom-left
		key code 125 using {command down, option down}
		delay d
		keystroke "cd " & targetDir & " && csp"
		key code 36
		delay 0.5

		-- Bottom-middle
		key code 124 using {command down, option down}
		delay d
		keystroke "cd " & targetDir & " && csp"
		key code 36
		delay 0.5

		-- Bottom-right
		key code 124 using {command down, option down}
		delay d
		keystroke "cd " & targetDir & " && csp"
		key code 36
		delay 0.5

		-- Fullscreen
		delay 0.5
		keystroke "f" using {control down, command down}
	end tell
end run
