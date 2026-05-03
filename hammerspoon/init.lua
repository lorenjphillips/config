-- Global hotkey (ctrl+option+w): open a new Warp window wherever the cursor is
-- Requires Warp to be set to "All Desktops" in the Dock (right-click → Options → All Desktops)

local function newWarpWindow()
  hs.osascript.applescript([[
    tell application "System Events"
      tell process "Warp"
        click menu item "New Window" of menu "File" of menu bar 1
      end tell
    end tell
  ]])
end

hs.hotkey.bind({"ctrl", "alt"}, "w", function()
  local warp = hs.application.find("dev.warp.Warp-Stable")
  if warp then
    newWarpWindow()
  else
    hs.application.open("dev.warp.Warp-Stable")
    hs.timer.doAfter(2, newWarpWindow)
  end
end)
