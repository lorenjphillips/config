-- Global hotkey (ctrl+option+w): open a new Warp window wherever the cursor is
-- Requires Warp to be set to "All Desktops" in the Dock (right-click → Options → All Desktops)
hs.hotkey.bind({"ctrl", "alt"}, "w", function()
  local warp = hs.application.find("dev.warp.Warp-Stable")
  if warp then
    hs.osascript.applescript([[
      tell application "Warp" to activate
      tell application "System Events"
        keystroke "n" using {command down}
      end tell
    ]])
  else
    hs.application.open("dev.warp.Warp-Stable")
  end
end)
